*Calypso-SystemTools-QueryBrowser
spawnQueryBrowserOn: aQuery withState: navigationBlock
	
	^self spawnBrowser: ClyQueryBrowser withState: [ :browser | 
		browser queryScopes: self allNavigationScopes.
		browser showResultOf: aQuery.
		navigationBlock valueWithPossibleArgs: {browser}]