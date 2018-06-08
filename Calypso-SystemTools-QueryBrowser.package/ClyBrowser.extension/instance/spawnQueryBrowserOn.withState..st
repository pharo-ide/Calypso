*Calypso-SystemTools-QueryBrowser
spawnQueryBrowserOn: aQuery withState: navigationBlock
	| targetQuery |
	targetQuery := aQuery.
	aQuery isBoundToEnvironment ifFalse: [ 
		targetQuery := aQuery withScope: self defaultNavigationScope].
	
	^self spawnBrowser: ClyQueryBrowser withState: [ :browser | 
		browser queryScopes: self allNavigationScopes.
		browser showResultOf: targetQuery.
		navigationBlock valueWithPossibleArgs: {browser}]