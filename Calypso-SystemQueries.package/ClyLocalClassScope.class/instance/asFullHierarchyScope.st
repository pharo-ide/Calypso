converting
asFullHierarchyScope
	| subclassScope fullScope |
	subclassScope := self asScope: ClySubclassScope.
		
	fullScope := self , self asInheritedScope, subclassScope. 
	fullScope name: self class hierarchyScopeName.
	^fullScope