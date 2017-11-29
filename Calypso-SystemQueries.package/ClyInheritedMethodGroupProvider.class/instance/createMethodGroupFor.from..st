building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	^ClyInheritedMethodGroup 
		withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope