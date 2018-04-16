converting
asFullHierarchyScope
	| subclassScope fullScope |
	subclassScope := self asScope: ClySubclassScope.
		
	fullScope := self withInheritedScope, subclassScope. 
	fullScope name: self class hierarchyScopeName.
	^fullScope