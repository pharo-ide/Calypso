instance creation
forAllMethods: aMethodQuery from: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllClasses 
		from: (aClassScope asScope: ClySuperclassScope) 
		as: ClyMethodVisibilityGroups new.		
				
	^(self named: 'inherited methods' on: aMethodQuery withSubgroupsFrom: subgroupsQuery)
		visibilityLevels: { ClyFullVisibilityLevel of: aClassScope }