controlling
loadItemsOf: anEnvironmentContent startingWhere: conditionBlock
	
	| newItems |
	newItems := anEnvironmentContent resolveItemsStartingWhere: conditionBlock count: sizeLimit.
	newItems ifEmpty: [ ^false  ].
	
	startPosition := newItems first position.
	items := newItems.
	^true