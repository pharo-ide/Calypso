instance creation
withMethods: aMethodQuery from: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllMethodCritiques 
		from: aClassScope as: ClyGroupedCritiques new.
	
	^self named: 'critiques' priority: 8.5 on: aMethodQuery withSubgroupsFrom: subgroupsQuery