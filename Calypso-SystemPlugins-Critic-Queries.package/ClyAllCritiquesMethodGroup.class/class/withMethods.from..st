instance creation
withMethods: aMethodQuery from: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllProblemMethods 
		from: aClassScope as: ClyGroupedProblemMethods new.
	
	^self named: 'critiques' priority: 8.5 on: aMethodQuery withSubgroupsFrom: subgroupsQuery