building
buildRootItems
	self makeMoreSuperclassesFirst.

	items add: (ClyInheritedMethodGroup classes: rootClasses) asCalypsoBrowserItem.
	self buildClassVariablesGroupIfExists.
	
	super buildRootItems 