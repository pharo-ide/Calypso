testing
isInSameStateAs: anotherDataSource

	(super isInSameStateAs: anotherDataSource) ifFalse: [ ^false ].
	
	expandedItems size = anotherDataSource expandedItems size ifFalse: [ ^false ].
	^expandedItems allSatisfy: [ :myItem | 
		anotherDataSource expandedItems 
			detect: [ :anotherItem | myItem isSameAs: anotherItem ]
			ifFound: [ :anotherItem | 
				myItem childrenDataSource isInSameStateAs: anotherItem childrenDataSource ]
			ifNone: [ false ] ]