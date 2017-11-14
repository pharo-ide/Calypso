building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup classScope: self basisClasses.
	items add: group asCalypsoBrowserItem