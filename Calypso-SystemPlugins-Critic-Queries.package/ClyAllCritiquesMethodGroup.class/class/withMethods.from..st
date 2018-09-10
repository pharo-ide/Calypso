instance creation
withMethods: aMethodQuery from: aClassScope
	| subgroupsQuery |
	subgroupsQuery := ClyAllMethodCritiqueQuery 
		from: aClassScope as: ClyGroupedCritiqueResult new.
	
	^self named: 'critiques' priority: 8.5 on: aMethodQuery withSubgroupsFrom: subgroupsQuery