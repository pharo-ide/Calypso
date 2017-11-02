tests
testAllItems
	
	| allItems unprepared |
	allItems := cursor retrieveAll.
	
	self deny: allItems = queryResult items.
	self assert: (allItems collect: #actualObject) equals: queryResult items.
	unprepared := allItems reject: #isPrepared.
	self assert: unprepared isEmpty