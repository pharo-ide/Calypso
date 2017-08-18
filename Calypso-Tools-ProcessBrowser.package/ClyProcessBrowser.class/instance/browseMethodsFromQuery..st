navigation
browseMethodsFromQuery: aMethodQuery
	
	| queryScopes |
	queryScopes := { self systemScope }.
		
	self browseMethodsFromQuery: aMethodQuery inScopes: queryScopes