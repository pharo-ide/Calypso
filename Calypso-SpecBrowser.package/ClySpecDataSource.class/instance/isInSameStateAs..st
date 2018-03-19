testing
isInSameStateAs: anotherDataSource

	(self isSameAs: anotherDataSource) ifFalse: [ ^false ].
	
	expandedItems size = anotherDataSource expandedItems size ifFalse: [ ^false ].
	^expandedItems allSatisfy: [ :myItem | 
		anotherDataSource expandedItems 
			detect: [ :anotherItem | myItem isSameAs: anotherItem ]
			ifFound: [ :anotherItem | 
				myItem childrenDataSource isInSameStateAs: anotherItem childrenDataSource ]
			ifNone: [ false ] ]	 