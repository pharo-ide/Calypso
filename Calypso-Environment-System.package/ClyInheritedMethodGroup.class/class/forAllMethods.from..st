instance creation
forAllMethods: aMethodQuery from: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllClasses 
		from: (aClassScope asScope: ClySuperclassScope) 
		as: ClyMethodVisibilityGroups new.		
				
	^(self named: 'inherited methods' priority: 10 on: aMethodQuery withSubgroupsFrom: subgroupsQuery)
		visibilityLevels: { ClyFullVisibilityLevel of: aClassScope }