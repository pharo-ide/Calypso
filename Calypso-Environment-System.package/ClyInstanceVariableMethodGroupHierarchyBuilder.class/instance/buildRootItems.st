building
buildRootItems
	self makeMoreSuperclassesFirst.

	items add: (ClyInheritedMethodGroup classScope: rootClasses) asCalypsoBrowserItem.
	self buildClassVariablesGroupIfExists.
	
	super buildRootItems 