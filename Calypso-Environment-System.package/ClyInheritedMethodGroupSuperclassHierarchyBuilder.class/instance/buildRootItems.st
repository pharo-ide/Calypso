building
buildRootItems

	self makeMoreSuperclassesFirst.
	
	self buildTraitItemsFor: rootClasses depth: 0.
	
	super buildRootItems.
	