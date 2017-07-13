I am a root of hierarchy of method group providers which detect methods classification by some criteria.

I split logic for group building by two steps which subclasses should implement:
	- buildMethodGroupsFor: aMethod. It analyze what method groups should be created and creates them.
	- addMethodGroupsTo: itemsCollection. It analyze set of built groups, modifies it and add it to result.
