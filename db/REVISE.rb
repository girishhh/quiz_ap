profile vs bash_profile vs /etc/profile   --- extra(how start up files are read)

bin/rails vs rails


symbol vs string(comparison speed ,memory consumption,what if we are using the symbols and string multiple times)


XHR request --- javascript
ajax --- jquery

$.ajax is a wrapper around the XMLHttpRequest

rails g model --- will create migration file with model file and also it will create test files for model under test/models/


change primary key

datetime vs timestamp(wrt rails both are same---psql stores datetime as timestamp with or without timezone)
-------------------------------------------------------------------------------

change_column is irreversible(here we will change the data type of column)

remove_column is reversible if only data type is mentioned in migration

reverse migrations are executed in reverse order of specified instructions
i.e
def change
	rename_column :comments,:num3,:num4
    remove_column :comments,:num4,:integer
end

so here while revering reverse of remove_column :comments,:num4,:integer i.e add_column(:comments, :num4, :integer) is executed first than the  reverse of rename_column :comments,:num3,:num4 i.e  rename_column(:comments, :num4, :num3) executedc later

has_one association allows to create multiple associated records for single record => Post has one like,we can create many likes with the same post(contradiction)
-----------------------------------------------------------------------------------

join table precedense of names(to be read)

"giri_sh" =>"giris"   => if there is underscore,if all charecters before it are same, '_' has less precedence than alphabets but grater than number =>  "giri_sh"  and "girisz"  than girisz has higher precedence , "giri_sh" and  "giri2" than
source and source_type active record options(bookmarked)

->{distnct,order,offset,limit,readonly}


---------------------------------------------------
increment,decrement,toggle ---> will update column just in instance of object but will not save the object---->so no callbacks

increment!,decrement!,toggle!---->will save the object in db ---> no validations but remaining(other than validational callbacks) callbacks will be executed

update_column,update_all,update_columns,update_counters--->will save the object in db but no callbacks

here no callbacks => no validations also

--------------------------------------------------
validates :name,confirmation: { case_sensitive: false } ---> case sensitive not working

validates :name,exclusion: {in: [1,2],message: ""} ----> other than these([1,2]) any value is acceptable
validates :name,inclusion: {in: [1,2],message: ""}----> only [1,2]  is acceptable
---------------------------------------------------

put --> when u want to udate all attributes of an existing object
patch ---> when u want to update some attributes of an existing object


------------------------------------
asset pipleine

why fingerprinting ---> 1. file name dependent of file content 
						2. compare same files in multi server environments(we will get to know whether two files are same or not)
						3.rails will set some specific headers after fingerprinting to enable browser caching

To disable fingerprinting ---> config.assets.digest = false

sprocket-rails  --> asset pipleine
cofee-rails --> coffiscript compression --> used for generating .cofee file when u generate controller
sass-rails  --> .scss file compression and used for css file compression by default --> used for generating .scss file when u generate controller

execjs runtime environment is requied for coffescript to work

lib/assets ---> used internally by a company


data-turbolinks  -->  suited for environments where header will not change since on each page change it will swaps the body part keeping the head same as previous page
                 -->  it will keep update of all assets on each page change-->meaning instead of browser ensuring all assets  are upto date , turbo links will do that if assets changed it will reload them

media attribute in rails ---> it will ensure that current css is suited for all target devises(like printer, screen)--> it can take 'all' , 'printer','screen' etc

--> if u specify the require css or js file twice in manifest files ,sprockets will include it in output only once but no error

purpose of sprockets-manifest-md5hash.json(to be read)

plain text rendering(without layout)

operator-precedense(&& and)

CSRF token --> to be reas



--------------------------------------------------------------------------------

Git  status  -s

A -- untracked file which is staged
?? -- untracked file not staged
M -- tracked file which is modified or tracked file which is modified and staged(color diffrence)


if file is already being tracked to remove it from tracking by adding that file to gitignore

cached and staged are same

git rm --cached Gemfile

git diff --staged Gemfile (only staged changes in Gemfile)
git diff --staged (staged changes in all files)

git diff Gemfile (modification or changes to be staged in Gemfile)
git diff -- same but wrt all files

when u rename file(manually) --> old file will be considered as deleted and new file will be in untracked list

git mv from_loc to_loc  --> if a file is untracked this command is invalid 
	                     --> if a file is already is in tracking list than it will show rename file form_name to to_name(stage message will same as this)
	                     ---> if a file is already is in tracking list and u moved(git mv from_loc to_loc ) once(or renamed it once) and than u modified, it will be shown in modified(non-staged) , as well as renamed(staged) ,at this moment if u add that modified file it will show old_file deleted new file addded(stage message)

create mode number(git commit) -- to be read

girish mlklmklmlkmlmlkmlkm

test 123 test jsabjabsdjhbsd
girish

