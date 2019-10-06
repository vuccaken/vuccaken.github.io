# Usage: rake deploy
desc "Begin a push static file to GitHub"
task :deploy do
  puts "! Copy static file from _site to _deploy"
  sh "cp -r _site/* _deploy/"
  puts "! Change directory _deplay"
  cd "_deploy" do
    puts "! Push to master branch of GitHub"
    sh "git add *"
    message = "deploy at #{Time.now}"
    begin
      sh "git commit -m \"#{message}\""
      sh "git push origin master:master"
    rescue Exception => e
      puts "! Error - git command abort"
      exit -1
    end
  end
end