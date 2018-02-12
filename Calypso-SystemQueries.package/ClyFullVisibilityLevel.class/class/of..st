instance creation
of: aClassScope
	
	^(super of: aClassScope)
		extraClassScope: aClassScope asInheritedScope asInterestingClassScope