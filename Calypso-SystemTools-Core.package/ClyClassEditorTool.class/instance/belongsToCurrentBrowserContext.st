testing
belongsToCurrentBrowserContext

	^(browser isClassSelected: editingClass)
		or: [ ^browser isClassSelected: editingClass instanceSide ]