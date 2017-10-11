navigation
browseQueryResultOf: aMethodQuery
	
	| queryScopes |
	queryScopes := { self systemScope }.
		
	self browseMethodsFromQuery: aMethodQuery inScopes: queryScopes