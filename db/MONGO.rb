list all collections --- db.getCollectionNames()

db.employee.update( {$and: [{likes: 333},{name: 'girish'}]},{$set: {name: "sadasdsad",likes: 888}})



---------------------------------------------------------
db.employee.insertMany([{   
title: 'MongoDB Overview', 
description: 'MongoDB is no sql database',
by_user: 'tutorials point',
url: 'http://www.tutorialspoint.com',
tags: ['mongodb', 'database', 'NoSQL'],
likes: 100
},
{   
title: 'NoSQL Overview', 
description: 'No sql database is very fast',
by_user: 'tutorials point',
url: 'http://www.tutorialspoint.com',
tags: ['mongodb', 'database', 'NoSQL'],
likes: 10
},
{   
title: 'Neo4j Overview', 
description: 'Neo4j is no sql database',
by_user: 'Neo4j',
url: 'http://www.neo4j.com',
tags: ['neo4j', 'database', 'NoSQL'],
likes: 750
}])


db.employee.aggregate([
    {$match: {likes: {$gt: 1}}},
    {$group: {_id: "$by_user",sum: {$sum: "$likes"}}},
    {$project: {title: "$_id.title",sum: "$sum"}}
])


here  {$match: {likes: {$gt: 1}}}  --> will take all records with likes > 1
than group by by user
than show title and sum 

get max  value of field using db.employee.find().sort({likes: -1}).limit(1)
------------------------------------------------------------------------------------
{ "_id" : ObjectId("59dcd568b4ea558feeea623a"), 
    "subord" : [ { "name" : "girish", "likes" : [ { "name" : "like1" }, { "name" : "like2" } ] } ]
}

In above example db.employee.find({"subord.likes.name": "like1"}) --> will matches to name of likes of subord

----------------------------------------------------------------------------------

embeds_many --> embedded_in
embeds_one --> embedded_in

recursively_embeds_one(self association)
ex: a = Person.first
    b = Person.second
    a.child_person = b
    a.save

recursively_embeds_many
-------------------------------------

polymorphic --- > using embeds --> nothing is stored in belongs to class 
ex: Person , Employee , Pictures
Person has pictures field which stores picture --> { "_id" : ObjectId("59df090c7b46af172b000002"), "name" : "girish", "pictures" : [ { "_id" : ObjectId("59df091a7b46af172b000003"), "name" : "girish" } ] }

Nothing is stored in picture table

---------------------------------------------

polymorphic --- > using has_one or has_many --> acts same as active record polymorphic but when u query Picture.first.person it wont give u the person object


---------------------------------------------------
POSTGRES

hstore --- >  stores hash but no nesting of key value pair 

json ---> stores input in text format in db , since its text format is stored ordering of keys is preserved , accessing values is slower(no indexing support),duplicate keys can be stored

jsonb ---> stores input in binary format , ordering of keys is not preserved ,accessing values is faster(Gist and GIN indexing can be used),no duplication of keys(if multiple same keys last key will be stored)


Gist --> generalized search trees ,builds index faster,accesing of values is slower,less memory consumption

GIN ---> generalized inverted index,builds index slower,accesing values is faster,more memory consumption


--------------------------------------------------------

indexing ---> a data structure used to speed up data retrieval at the cast of additional writes and storage space

types b-tree , hash-tree , GiST , GIN

primary-indexes --> enabled by default on primary keys

foreign-key indexes

partial indexes --> add_index :table_name , 'lower(email)' ,'index name',index: true

expression indexes

-----------------------------------------------------

b-tree indexing
consider a node of order m 
than in b-tree we have

1. root node should have atleast 2 children and non-root ,non-leaf node has atleast m/2 children(2.5-->3) and atmost m children

2.all leaf nodes should be at same level

3. if there are n children than there should be (n-1) keys




Things to be read

 quering the jsonb column (->@ etc etc)