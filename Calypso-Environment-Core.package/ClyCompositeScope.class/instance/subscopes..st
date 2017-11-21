accessing
subscopes: aCollection
	aCollection ifEmpty: [ ^self error: 'ClyCompositeScope should include at least one subscope' ].
	
	subscopes := aCollection.
	environment := subscopes anyOne environment.
	basisObjects := subscopes flatCollect: [ :each | each basisObjects ] as: IdentitySet