*Calypso-SystemTools-QueryBrowser
browseQuery: aQuery
	
	self spawnBrowser: ClyQueryBrowser withState: [ :browser | 
		browser queryScopes: self allNavigationScopes.
		browser showResultOf: aQuery]