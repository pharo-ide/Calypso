decoration
markItemWithSubgroups: myItem
	(subgroupsQuery retrievesItemsOfType: ClyClass) ifTrue: [ 
		"I am a root visibility group then I always have subgroups representing classes.
		And in case if there are no inherited methods I will be not shown at all"
		myItem markWithChildrenOf: ClyClass]