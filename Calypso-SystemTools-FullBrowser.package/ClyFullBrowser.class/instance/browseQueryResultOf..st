navigation
browseQueryResultOf: aMethodQuery
	
	| queryScopes localClassScope |
	localClassScope := self classSelection asItemsScope: ClyLocalClassScope.
	queryScopes := { self systemScope. self packageSelection asItemsScope: ClyPackageScope. 
		localClassScope asScope: ClySubclassScope. localClassScope } reject: #isBasedOnEmptyBasis.
	
	self browseMethodsFromQuery: aMethodQuery inScopes: queryScopes