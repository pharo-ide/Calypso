instance creation
withMethodsInheritedFrom: aClassScope

	^self  
		withMethodQuery: (ClyAllMethods from: aClassScope asInheritedScope)
		andClassesInheritedFrom: aClassScope