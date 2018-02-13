building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	^ClyCurrentMetaLevelMethodGroup 
		withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope