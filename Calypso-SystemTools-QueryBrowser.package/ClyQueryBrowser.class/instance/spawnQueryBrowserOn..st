navigation
spawnQueryBrowserOn: aQuery
	
	| actualQuery |
	actualQuery := activeScope adoptQuery: aQuery.
	
	^super spawnQueryBrowserOn: actualQuery