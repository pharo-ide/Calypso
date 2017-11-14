accessing
subgroupsQuery
	^subgroupsQuery ifNil: [ subgroupsQuery := self createSubgroupsQuery ]