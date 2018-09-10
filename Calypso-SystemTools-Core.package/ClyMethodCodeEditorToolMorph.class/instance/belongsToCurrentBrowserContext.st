testing
belongsToCurrentBrowserContext
	^browser methodSelection isEmpty 
		ifTrue: [ browser isClassSelected: self editingMethod origin ]
		ifFalse: [ browser isMethodSelected: self editingMethod]