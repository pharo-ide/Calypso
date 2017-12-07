instance creation
of: aClassScope toShow: aClass
	^(self of: aClassScope)
		extraClassScope: (aClassScope asScope: ClyClassScope of: aClass)