queries
rebuildForQuery: aQuery

	aQuery scope ifNil: [ 
		aQuery scope: buildingQuery scope].
	
	^environment query: aQuery