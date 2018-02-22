I am a root of hierarchy of method groups.

Any method group is created on method query:

	ClyMethodGroup named: 'some group' on: aMetodQuery

Method query can be also composite but it should return methods.

Also method group can be expanded to subgroups using subgroupsQuery. You can specify it in another instance creation method: 

	ClyMethodGroup named: 'some group' on: aMethodQuery withSubgroupsFrom: aQuery	

And there are additional constructors to specify priority of group:

	ClyMethodGroup named: 'some group' priority: 20 on: aMethodQuery.
	ClyMethodGroup named: 'some group' priority: 20 on: aMethodQuery withSubgroupsFrom: aQuery

All groups are sorted by priority and name in the browser. Larger priority value put group to the top of list.

I provide several methods to implement various commands: 

- importMethod: aMethod
It supposed to modify given aMethod in the way that it will become the part of the group.

- importMethods: methods 
It imports multiple methods
		 
- removeWithMethods
It removes all methods and should ensure that groups will be removed too which is true for all virtual groups.

And I provide method #includesMethod: which is used in the browser to highlight groups which contains selected methods.

Internal Representation and Key Implementation Points.

    Instance Variables
	methodQuery:		<ClyMethodQuery>
	subgroupsQuery:		<ClyQuery>