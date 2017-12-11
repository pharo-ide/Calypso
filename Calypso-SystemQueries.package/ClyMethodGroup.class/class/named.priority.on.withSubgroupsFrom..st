instance creation
named: aString priority: aNumber on: aMethodQuery withSubgroupsFrom: subgroupsQuery
	^(self named: aString priority: aNumber on: aMethodQuery) 
		subgroupsQuery: subgroupsQuery