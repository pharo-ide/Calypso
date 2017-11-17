instance creation
of: aClassScope
	^(self of: aClassScope)
		extraClassScope: (aClassScope asScope: ClySuperclassScope)