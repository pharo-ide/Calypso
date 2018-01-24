instance creation
named: aString on: aClassQuery  withSubgroupsFrom: subgroupsQuery
	^(self named: aString on: aClassQuery) 
		subgroupsQuery: subgroupsQuery