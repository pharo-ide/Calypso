My subclasses represent queries which retrieve particular kind of objects.
Subclasses should return class of items from class side method #resultItemsType.

I implement many required methods of superclass. 
The rest is responsibility of subclasses:

- buildResult: aQueryResult 
It is the method where query retrieves items from the scope and fill given result with them. Look at implementors.

- checkEmptyResult
Subclasses should be able detect that result will be empty without execution.

-isResult: aQueryResult affectedBy: aSystemAnnouncement
Any query can be affected by system changes. Subclasses should implement what change affects their results.

- retrivesItem: anObject
Subclasses should check that given item can be retrieved independently on scope.

-collectMetadataOf: aQueryResult by: anEnvironmentPlugin
Subclasses should dispatch metadata collection to the given environment plugin.

I provide many instance creation methods. For example you can execute any typed query with sorted result:

	ClyAllClasses sortedFrom: ClyNavigationEnvironment currentImageScope.

And I provide union query support. Typed queries can be concatinated using command message:
	aClassQuery, aMethodQuery

Look at class side for more options