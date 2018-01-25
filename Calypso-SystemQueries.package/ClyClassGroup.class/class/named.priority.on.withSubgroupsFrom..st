instance creation
named: aString priority: aNumber on: aClassQuery withSubgroupsFrom: subgroupsQuery
	^(self named: aString priority: aNumber on: aClassQuery) 
		subgroupsQuery: subgroupsQuery