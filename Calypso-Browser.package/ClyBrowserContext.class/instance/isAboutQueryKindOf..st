testing
isAboutQueryKindOf: aQueryClass

	(selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryKindOf: aQueryClass ])
			ifTrue: [ ^true ].
			
	^self activeQueryView showsItemsFromQuery: aQueryClass 