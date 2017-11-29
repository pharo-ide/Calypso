testing
belongsToCurrentBrowserContext
	^context isClassSelected and: [ browser isClassSelected: context lastSelectedClass ]