controlling
loadItemsOf: aBrowserQueryResult startingWhere: conditionBlock
	
	| newItems |
	newItems := aBrowserQueryResult itemsStartingWhere: conditionBlock count: sizeLimit.
	newItems ifEmpty: [ ^false  ].
	
	startPosition := newItems first position.
	items := newItems.
	^true