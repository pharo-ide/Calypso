*Calypso-SystemTools-QueryBrowser
browseQueryResultOf: aMethodQuery
	
	| queryScopes localClassScope |
	localClassScope := self classSelection asItemsScope.
	queryScopes := { self systemScope. self packageSelection asItemsScope.. 
		localClassScope asScope: ClySubclassScope. localClassScope } reject: #isBasedOnEmptyBasis.
	
	self browseMethodsFromQuery: aMethodQuery inScopes: queryScopes