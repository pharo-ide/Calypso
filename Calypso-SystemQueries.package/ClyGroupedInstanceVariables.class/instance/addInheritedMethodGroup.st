building
addInheritedMethodGroup

	| group |
	group := ClyCurrentMetaLevelMethodGroup withMethodsInheritedFrom: self queryScope. 
	items add: group asCalypsoBrowserItem