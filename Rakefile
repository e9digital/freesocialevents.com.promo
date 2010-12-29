#ssh_user = "root@freesocialevents.com"
ssh_user = "root@ec2-50-16-118-104.compute-1.amazonaws.com"

remote_root = "/var/www"

desc "Runs preview"
task :preview do
  system "staticmatic preview ."
end

desc "Build the site"
task :build => "styles:clear" do
  puts "** building site **"
  system "staticmatic build ."
end

desc "Clear and generate new styles, build, and deploy"
task :deploy => :build do
  puts "** deploying site **"
  system("rsync -avz --rsh \"ssh -i keys/fse.pem\" --delete site/ #{ssh_user}:#{remote_root}")
  system("rsync --rsh \"ssh -i keys/fse.pem\" src/cgi-bin/post.cgi #{ssh_user}:/usr/lib/cgi-bin/")
end

namespace :styles do
  desc "Clear styles"
  task :clear do
    puts "** clearing styles **"
    system "rm -Rfv site/stylesheets/*"
  end

  desc "Regenerate styles"
  task :generate => :clear do
    puts "** generating styles" 
    system "compass"
  end
end
