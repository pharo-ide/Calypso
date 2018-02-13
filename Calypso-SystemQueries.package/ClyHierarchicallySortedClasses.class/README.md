I am a class query result which represent retrieved classes as hierarchically sorted list.

I do not implement hierarchy building logic by myself. Instead I delegate it to the hierarchy variable, a kind of ClyClassHierarchy.
And I use built map to enumerate classes in hierarchical order and convert them to ClyBrowserItem instances.

You can create my instances directly from hierarchy: 

	ClySubcalssHierarchy new asQueryResult
	
Or use explicit class side method: 
	
	ClyHierarchicallySortedClasses with: ClySubcalssHierarchy new.
	
I also provide converting methods to get inverse hierarchy result or sorted by another function: 

	aQueryResult withInverseHierarchy.
	aQueryResult sortedBy: aSortFunction.
