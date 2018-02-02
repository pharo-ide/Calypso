I am a root of hierarchy of class groups.

Any class group is created on class query:

	ClyClassGroup named: 'some group' on: aClassQuery

Class query can be also composite but it should return classes.

Also I can be expanded to subgroups using subgroupsQuery. You can specify it in another instance creation method: 

	ClyClassGroup named: 'some group' on: aClassQuery withSubgroupsFrom: aQuery	

And there are additional constructors to specify priority of group:

	ClyClassGroup named: 'some group' priority: 20 on: aClassQuery.
	ClyClassGroup named: 'some group' priority: 20 on: aClassQuery withSubgroupsFrom: aQuery

All groups are sorted by priority and name in the browser. Larger priority value put group to the top of list.

I provide several methods to implement various commands: 

- importClass: aClass
It supposed to modify given aClass in the way that it will become the part of group.

- importClasses: classes 
It imports multiple classes
		 
- removeWithClasses
It removes all classes and should ensure that groups will be removed too which is true for all virtual groups.

Internal Representation and Key Implementation Points.

    Instance Variables
	classQuery:		<ClyClassQuery>
	subgroupsQuery:		<ClyQuery>