system changes
handleSystemChange: aSystemAnnouncement byProcessingList: allProcessingResults
	| expectedResult |
	super handleSystemChange: aSystemAnnouncement byProcessingList: allProcessingResults.
	
	expectedResult := environment cachedResultOf: buildingQuery.
	expectedResult ifNil: [ ^self ].
	
	needsRebuild ifTrue: [ 
		buildProcess ifNotNil: [ buildProcess terminate ].
		expectedResult itemsChanged].
	
	allProcessingResults remove: expectedResult ifAbsent: [  ]