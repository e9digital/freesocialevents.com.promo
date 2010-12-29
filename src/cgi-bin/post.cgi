#!/usr/local/bin/ruby

require 'cgi'
require 'net/smtp'
require 'date'

require 'rubygems'
require 'mysql2'

cgi = CGI.new

_from = 'contact@freesocialevents.com'
_to   = 'contact@freesocialevents.com'

client = Mysql2::Client.new(:host => 'localhost', :username => 'fse_db_user', :password => 'f4c3S0uth', :database => 'freesocialevents')

email     = client.escape(cgi.params['user_email'].first || '')
zipcode   = client.escape(cgi.params['user_zipcode'].first || '')
twitter   = client.escape(cgi.params['user_twitter'].first || '')
facebook  = client.escape(cgi.params['user_facebook'].first || '')

client.query(%Q/insert into signups (email, zipcode, twitter, facebook) values ('#{email}', '#{zipcode}', '#{twitter}', '#{facebook}')/)

begin
  Net::SMTP.start('localhost', 25) do |smtp|
    message = <<-MESSAGE
  From: #{_from}
  To: #{_to}
  Subject: FreeSocialEvents.com Signup
  Date: #{DateTime.now.to_s}

  New Signup:
  ------------
  Email:    #{email}
  Zipcode:  #{zipcode}
  Twitter:  #{twitter}
  Facebook: #{facebook}
MESSAGE
    
    smtp.send_message message, _from, _to
  end

  cgi.out('status' => '204 No Response') {''}
rescue => e
  cgi.out('status' => '500 Internal Server Error') { e.inspect }
end

