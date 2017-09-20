testing
belongsToCurrentBrowserContext
	^browser methodSelection isEmpty 
		ifTrue: [ browser isClassSelected: context lastSelectedMethodClass ]
		ifFalse: [ browser isMethodSelected: context lastSelectedMethod]