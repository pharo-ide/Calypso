testing
belongsToCurrentBrowserContext
	^(browser isMethodSelected: self leftMethod) 
		and: [ browser isMethodSelected: self rightMethod ]