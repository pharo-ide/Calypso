building groups
createMethodQueryInScope: aClassScope
	^ClyAllMethods from: (aClassScope asScope: ClySuperclassScope)