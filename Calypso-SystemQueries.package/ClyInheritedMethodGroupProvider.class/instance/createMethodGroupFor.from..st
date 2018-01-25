building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	^ClyAllMethodGroup 
		withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope