testing
belongsToCurrentBrowserContext
	^browser selectedMethods isEmpty 
		ifTrue: [ browser isClassSelected: context lastSelectedMethodClass ]
		ifFalse: [ browser isMethodSelected: context lastSelectedMethod]