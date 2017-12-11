testing
belongsToRemovedBrowserContext
	^self leftMethod isInstalled not or: [ self rightMethod isInstalled not ]