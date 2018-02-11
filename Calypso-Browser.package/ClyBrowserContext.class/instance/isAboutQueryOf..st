testing
isAboutQueryOf: anItemTypeClass

	^selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryOf: anItemTypeClass ]