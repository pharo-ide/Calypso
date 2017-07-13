building
buildFromMethodGroups: parentGroups
	"We only retrieve children subgroups"

	parentGroups ifEmpty: [ ^self ].
	parentGroups size > 1 ifTrue: [ self error: 'Multiple method groups are not supported!' ].
	
	itemScope := parentGroups first subgroupEnvironmentScope.
	items := parentGroups first buildSubgroupItems