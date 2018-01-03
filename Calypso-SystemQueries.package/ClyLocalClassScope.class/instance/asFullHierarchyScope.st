converting
asFullHierarchyScope
	| subclassScope fullScope |
	subclassScope := (self asScope: ClySubclassScope)
		localScopeClass: self class.
		
	fullScope := self , self asInheritedScope, subclassScope.
	fullScope name: self class hierarchyScopeName.
	^fullScope