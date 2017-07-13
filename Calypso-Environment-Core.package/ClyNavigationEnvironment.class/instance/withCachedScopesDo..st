accessing
withCachedScopesDo: aBlock

	scopeCache do: [ :eachKind | 
		eachKind do: [ :eachScope |
			eachScope ifNotNil: aBlock]]