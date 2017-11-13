building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup classes: self basisClasses.
	items add: group asCalypsoBrowserItem