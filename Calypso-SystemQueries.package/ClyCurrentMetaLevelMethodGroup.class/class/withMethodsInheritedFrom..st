instance creation
withMethodsInheritedFrom: aClassScope

	^self  
		withMethodQuery: (ClyAllMethods from: aClassScope asLocalClassScope)
		andClassesInheritedFrom: aClassScope