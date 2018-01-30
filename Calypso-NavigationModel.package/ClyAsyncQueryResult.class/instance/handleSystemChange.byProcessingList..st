system changes
handleSystemChange: aSystemAnnouncement byProcessingList: allProcessingResults
	super handleSystemChange: aSystemAnnouncement byProcessingList: allProcessingResults.
	
	actualResult ifNil: [ ^self].
	needsRebuild ifTrue: [ 
		buildProcess ifNotNil: [ buildProcess terminate ].
		actualResult itemsChanged].
	
	allProcessingResults remove: actualResult ifAbsent: [  ]