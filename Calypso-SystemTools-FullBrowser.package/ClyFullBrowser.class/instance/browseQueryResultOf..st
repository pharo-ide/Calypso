navigation
browseQueryResultOf: aMethodQuery
	
	| queryScopes localClassScope |
	localClassScope := self classSelection asItemsScope: ClyBothMetaLevelClassScope.
	queryScopes := { self systemScope. self packageSelection asItemsScope: ClyPackageScope. 
		localClassScope asScope: ClySubclassScope. localClassScope } reject: #isBasedOnEmptyBasis.
	
	self spawnBrowser: ClyQueryBrowser withState: [ :browser |
		browser queryScopes: queryScopes.
		browser showResultOf: aMethodQuery]