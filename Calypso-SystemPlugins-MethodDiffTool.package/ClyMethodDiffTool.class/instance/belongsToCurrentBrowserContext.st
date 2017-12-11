testing
belongsToCurrentBrowserContext
	^(browser isMethodSelected: leftMethod) 
		and: [ browser isMethodSelected: rightMethod ]