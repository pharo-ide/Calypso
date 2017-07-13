building
buildRootItems
	self makeMoreSuperclassesFirst.

	items add: (ClyInheritedMethodGroup classes: rootClasses) asEnvironmentItem.
	self buildClassVariablesGroupIfExists.
	
	super buildRootItems 