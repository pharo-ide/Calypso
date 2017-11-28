navigation
browseQueryResultOf: aSystemQuery
	
	self spawnBrowser: ClyQueryBrowser withState: [ :browser | 
		browser queryScopes: self allQueryScopes.
		browser show: aSystemQuery inScope: activeScope]