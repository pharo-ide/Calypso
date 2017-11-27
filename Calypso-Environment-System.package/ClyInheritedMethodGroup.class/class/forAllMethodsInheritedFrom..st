instance creation
forAllMethodsInheritedFrom: aClassScope

	^self  
		forAllMethods: (ClyAllMethods from: (aClassScope asScope: ClySuperclassScope)) 		from: (aClassScope asScope: ClyClassScope)