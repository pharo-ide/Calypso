navigation
spawnQueryBrowserOn: aQuery
	
	| actualQuery |
	actualQuery := aQuery isBoundToEnvironment 
		ifTrue: [ aQuery ]
		ifFalse: [ activeScope adoptQuery: aQuery].
	
	^super spawnQueryBrowserOn: actualQuery