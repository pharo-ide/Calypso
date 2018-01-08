navigation
spawnQueryBrowserOn: aQuery
	
	| actualQuery |
	actualQuery := aQuery isBoundToEnvironment 
		ifTrue: [ aQuery ]
		ifFalse: [ aQuery withScope: activeScope].
	
	^super spawnQueryBrowserOn: actualQuery