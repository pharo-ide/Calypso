testing
isInSameStateAs: anotherDataSource

	(super isInSameStateAs: anotherDataSource) ifFalse: [ ^false ].
	
	collapsedItems size = anotherDataSource collapsedItems size ifFalse: [ ^false ].
	^collapsedItems allSatisfy: [ :myItem | 
		anotherDataSource collapsedItems anySatisfy: [ :anotherItem | 
			myItem isSameAs: anotherItem ] ]
	 