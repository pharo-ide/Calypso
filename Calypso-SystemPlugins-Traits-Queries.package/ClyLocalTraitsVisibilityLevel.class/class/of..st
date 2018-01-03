instance creation
of: aClassScope
	
	^(super of: aClassScope)
		extraClassScope: (aClassScope asScope: ClyInheritedTraitScope)