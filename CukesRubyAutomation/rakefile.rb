require 'rubygems'
require 'cucumber/rake/task'

#Cucumber::Rake::Task.new( :features) do |t|
 # t.cucumber_opts = "features --tags @jenkins "
#end

Cucumber::Rake::Task.new(:features) do |t|
  #t.cucumber_opts = "--format pretty" 
  #t.cucumber_opts = "--format html -o E:/Cukes.html" 
  t.cucumber_opts = "-f pretty -f html -o E:/CukesReport/TestReport.html"
end
