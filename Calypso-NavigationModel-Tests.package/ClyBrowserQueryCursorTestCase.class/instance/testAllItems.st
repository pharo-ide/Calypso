tests
testAllItems
	
	| allItems unprepared |
	allItems := cursor retrieveAll.
	
	self assert: allItems equals: queryResult items.
	unprepared := allItems reject: #isPrepared.
	self assert: unprepared isEmpty.
	self assert: (allItems collect: #position) asArray equals: (1 to: queryResult size) asArray.