navigation
moveToItemWhich: conditionBlock 
	| itemsFound |
	cache 
		findItemWhich: conditionBlock 
		ifExists: [ :cached | position := cached position. ^true ].
	
	itemsFound := cache loadItemsOf: queryResult startingWhere: conditionBlock.
	itemsFound ifFalse: [ ^false  ].
	
	position := cache startPosition.
	^true