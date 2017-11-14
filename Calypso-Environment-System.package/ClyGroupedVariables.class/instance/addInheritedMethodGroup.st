building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup fromClasses: self queryScope.
	items add: group asCalypsoBrowserItem