building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	| subgroupsQuery |
	subgroupsQuery := ClyAllClasses 
		from: (aClassScope asScope: ClySuperclassScope) 
		as: ClyMethodVisibilityGroups new.		
	^ClyInheritedMethodGroup on: aMethodQuery withSubgroupsFrom: subgroupsQuery