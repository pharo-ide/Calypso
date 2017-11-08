accessing
subscopes: aCollection
	subscopes := aCollection.
	basisObjects := subscopes flatCollect: [ :each | each basisObjects ] as: IdentitySet