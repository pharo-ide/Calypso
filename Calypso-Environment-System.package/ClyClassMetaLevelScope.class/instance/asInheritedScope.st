converting
asInheritedScope

	^(self asScope: ClySuperclassScope)
		metaLevelScope: self class