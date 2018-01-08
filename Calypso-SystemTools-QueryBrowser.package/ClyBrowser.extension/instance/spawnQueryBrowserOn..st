*Calypso-SystemTools-QueryBrowser
spawnQueryBrowserOn: aQuery
	
	^self spawnBrowser: ClyQueryBrowser withState: [ :browser | 
		browser queryScopes: self allNavigationScopes.
		browser showResultOf: aQuery]