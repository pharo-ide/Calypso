instance creation
forAllMethodsInheritedFrom: aClassScope

	^self  
		forAllMethods: (ClyAllMethods from: aClassScope asInheritedScope)
		from: aClassScope