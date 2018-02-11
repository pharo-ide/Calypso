testing
isAboutQueryKindOf: aQueryClass

	^selectedItems anySatisfy: [ :each | 
		each isRetrievedFromQueryKindOf: aQueryClass ]