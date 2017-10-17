execution
fetchResultAs: aQueryResult fromMethodGroups: parentGroups
	"We only retrieve children subgroups"

	parentGroups ifEmpty: [ ^self ].
	parentGroups size > 1 ifTrue: [ self error: 'Multiple method groups are not supported!' ].
	
	aQueryResult addItems: parentGroups first buildSubgroupItems