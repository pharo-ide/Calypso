instance creation
withMethodQuery: aMethodQuery andClassesInheritedFrom: aClassScope
	| subgroupsQuery groupName |
	groupName := aMethodQuery scope localScopeClass = ClyInstanceSideScope 
		ifTrue: [ 'instance side'] ifFalse: [ 'class side' ].
	
	subgroupsQuery := ClyAllClasses 
		from: aClassScope asInheritedScope, aClassScope asLocalClassScope
		as: ClyMethodVisibilityGroups withDefaultHierarchy.		
				
	^(self named: groupName priority: 10 on: aMethodQuery withSubgroupsFrom: subgroupsQuery)
		visibilityLevels: { ClyFullVisibilityLevel of: aClassScope }