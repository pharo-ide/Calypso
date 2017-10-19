controlling
loadItemsOf: anEnvironmentContent startingWhere: conditionBlock
	
	| newItems |
	newItems := anEnvironmentContent itemsStartingWhere: conditionBlock count: sizeLimit.
	newItems ifEmpty: [ ^false  ].
	
	startPosition := newItems first position.
	items := newItems.
	^true