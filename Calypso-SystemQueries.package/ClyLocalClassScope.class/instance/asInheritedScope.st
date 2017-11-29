converting
asInheritedScope
	^(self asScope: ClySuperclassScope)
		localClassScope: self class