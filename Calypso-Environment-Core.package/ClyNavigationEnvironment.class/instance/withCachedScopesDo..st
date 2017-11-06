accessing
withCachedScopesDo: aBlock

	queryCache do: [ :eachKind | 
		eachKind do: [ :eachScope |
			eachScope ifNotNil: aBlock]]