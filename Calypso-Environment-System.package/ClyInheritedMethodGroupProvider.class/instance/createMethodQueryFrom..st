building groups
createMethodQueryFrom: aClassScope
	^ClyAllMethods from: (aClassScope asScope: ClySuperclassScope)