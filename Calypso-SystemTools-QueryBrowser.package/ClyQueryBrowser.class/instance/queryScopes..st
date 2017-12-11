accessing
queryScopes: scopesCollection
	queryScopes := (scopesCollection
		reject: [ :each | each isBasedOnEmptyBasis])
		as: OrderedCollection 