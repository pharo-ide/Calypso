testing
isAboutQueryOf: anItemTypeClass

	(selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryOf: anItemTypeClass ])
			ifTrue: [ ^true ].
			
	^self activeQueryView showsItemsOfType: anItemTypeClass