building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup 
		forAllMethods: (ClyAllMethods from: (self queryScope as: ClySuperclassScope)) 
		from: (self queryScope asScope: ClyClassScope). 
	items add: group asCalypsoBrowserItem