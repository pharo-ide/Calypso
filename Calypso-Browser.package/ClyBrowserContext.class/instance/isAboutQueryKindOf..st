testing
isAboutQueryKindOf: aQueryClass

	(selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryKindOf: aQueryClass ])
			ifTrue: [ ^true ].
			
	^activeQueryView showsItemsFromQuery: aQueryClass 