instance creation
of: aClassScope toShow: aClass
	^(self of: aClassScope)
		extraClassScope: (ClyClassScope of: { aClass })