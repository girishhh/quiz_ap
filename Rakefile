# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :my_task,[:first_arg, :second_arg]  do |t, args|
  puts t
  puts args
end

file 'text.txt' do 
	cp 'to_copy.txt','text.txt'
end
#similar to taks but if you want to run any particular file tasks u should use this syntax
rake text.txt
