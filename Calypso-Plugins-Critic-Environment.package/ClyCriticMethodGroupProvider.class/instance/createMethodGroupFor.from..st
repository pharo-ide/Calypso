building groups
createMethodGroupFor: aMethodQuery from: aClassScope
	
	| subgroupsQuery |
	subgroupsQuery := ClyAllProblemMethods from: aClassScope as: ClyGroupedProblemMethods new.
	
	^(ClyAllCritiquesMethodGroup named: 'critiques' on: aMethodQuery withSubgroupsFrom: subgroupsQuery)
		critic: critic