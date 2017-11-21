instance creation
forAllMethodsInheritedFrom: aClassScope

	^self  
		forAllMethods: (ClyAllMethods from: (aClassScope as: ClySuperclassScope)) 
		from: (aClassScope asScope: ClyClassScope)