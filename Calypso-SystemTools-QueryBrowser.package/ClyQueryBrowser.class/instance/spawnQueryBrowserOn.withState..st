navigation
spawnQueryBrowserOn: aQuery withState: navigationState
	
	| actualQuery |
	actualQuery := aQuery isBoundToEnvironment 
		ifTrue: [ aQuery ]
		ifFalse: [ aQuery withScope: activeScope].
	
	^super spawnQueryBrowserOn: actualQuery withState: navigationState