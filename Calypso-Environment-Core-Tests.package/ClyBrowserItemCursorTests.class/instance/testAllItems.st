tests
testAllItems
	
	| allItems unprepared |
	allItems := cursor retrieveAll.
	
	self assert: allItems equals: queryResult items.
	unprepared := allItems reject: #isPrepared.
	self assert: unprepared isEmpty