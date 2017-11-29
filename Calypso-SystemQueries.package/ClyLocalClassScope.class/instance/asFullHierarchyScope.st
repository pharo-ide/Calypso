converting
asFullHierarchyScope
	| subclassScope |
	subclassScope := (self asScope: ClySubclassScope)
		localClassScope: self class.
		
	^self , self asInheritedScope, subclassScope