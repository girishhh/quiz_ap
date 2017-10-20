meta programming

arr = ["engine","wheel"]

arr.each do |name|

 define_method("set_#{name}=") do |info|
 	instance_variable_set("@var_#{name}",info)
 end

 define_method("get_#{name}") do 
 	instance_variable_get("@var_#{name}")
 end

end


symbol ,string ---> memory consumption when u use 3 same  symbols vs 3 same strings,performance when comparing strings(string comparison is slower since they are diffrent objects but same symbols comparing is faster since they represent same objects)
string has  more number of methods than the object


we cannot  include class within other using 'include' keyword

module Foo
  class Bar
  end
end

Foo::Bar--> to access the bar class

load vs require --> load must specify extension but reuire dont need extension(reuquire supports certain set of extensions)

include(as instance methods) vs extend(as class methods)


instance variable vs class variable --> instance variable ,each instance will have separate copy
class variable is shared by a class and its all subclasses,so if u change the class var in subclass it will affect in super class and visa versa

for new project without DB
	rails new my_project --skip-active-record
if there is existing project than in application.rb instead of require 'rails/all' load each library separatly for ex require 'action_mailer/railtie' etr,
if there is any reference to active record like env/dev.rb config.active_record.migration_error = :page_load(comment this)


Observer vs callbacks

observer --> similar to callbacks where observer methods are not directly related object life cycle,there can be multiple observers for single model

callbacks --> methods that are directly related to object life cycle,particular callback can only includded only once for a model

example: sending confirmation email after user registartion should be kept at observer level than callback level(which is more suitable bcz sending confirmation email is nothing to do with object life cycle)

	from rails 4.0 this observer feature has been depricated

make utility --> compile and link program modules

rake --> ruby make or  a ruby utility that uses Rakefile and .rake files to build tasks


dynamic scaffolding has been depricated since rails 2.0
for example
	within controller at the top we mention
	scaffold :model_name,which will generate all required mvc things at the runtime
	but in static scaffolding which we will enter the command manually at command line within rails app directory

super --> calls parent function  and passes arguemnts to that function,so basically same method along with parameters should be present in parent

super() --> calls parent function without arguemnts

A closure is basically a function/method that has the following two properties:

You can pass it around like an object (to be called later)
It remembers the values of all the variables that were in scope when the function was created. It is then able to access those variables when it is called even though they may no longer be in scope.


why git

--local opeartions
--each file is referred by checksum,so if checksum is lost even git cant able to acces file so high intigrity
-- snapshot of each file is being stored unlike other vcs where list of file changes are being stored