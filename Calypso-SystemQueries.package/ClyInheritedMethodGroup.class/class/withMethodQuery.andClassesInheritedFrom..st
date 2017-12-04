instance creation
withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllClasses 
		from: aClassScope asInheritedScope, (aClassScope asScope: ClyClassScope)
		as: ClyMethodVisibilityGroups withDefaultHierarchy.		
				
	^(self named: 'inherited methods' priority: 10 on: aMethodQuery withSubgroupsFrom: subgroupsQuery)
		visibilityLevels: { ClyFullVisibilityLevel of: aClassScope }