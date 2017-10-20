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

git config --global user.name
git config user.name(to override configurations in particular project)
git rm  --cached  file_name
git diff file_name or git diff --staged
git mv file_name1 file_name2(renames file)
git status -s
git log -p -2
git log --since=2.weeks
git log -S string_name
git commit --amend
git remote add
git remote show origin
git remote remove
git remote rename origin_old origin_name


tag:(detached HEAD state) -->  pointing to particular commit

git tag (lists tag name in ascending alphabatical order)
git tag -l "v1.1.2.*"

1.lightweight tags 
2.annotated tags

git tag -a tag_name -m "message"
git show tag_name
git tag -a tag_name commit_checksum or git tag tag_name commit_checksum
git push origin tag_name
git push origin --tags
git checkout tag_name
git checkout -b new_branch
git checkout -b new_branch tag_name
git push --delete origin tag2
git tag --delete tag_name(delete tag locally)

branching: Diverging from main line of development

commit --> stores commit object which has pointer to the snapshot of content staged ,commit message ,author ,date,pointers to the immediate previous commit
git branch 
git checkout -b branch_name
git log --decorate(where head is pointing)
git branch -v(to see last commit on each branch)
git branch --merged or git branch --no-merged
git branch -d branch_name

Remote branches: local copy of remote branch is set up
there should be local copy of remote branch in-order to modify in that branch i.e u cannot modify  in the remote branch directly that is in origin/master

git checkout -b new_branch origin/new_branch(creates local new_branch which is trackable)
git checkout --track origin/new_branch is same as git checkout -b new_branch origin/new_branch
git branch -u origin/branch
git branch -v(last commit in each branch)
git branch -vv(remote branches which are set up)
git fetch --all(to fetch entire data from all remotes)
git push origin --delete master
girish
