testing
isAboutQueryOf: anItemTypeClass

	(selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryOf: anItemTypeClass ])
			ifTrue: [ ^true ].
			
	^activeQueryView showsItemsOfType: anItemTypeClass