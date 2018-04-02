tests
testFindItemsWithActualObjects
	
	| found |
	found := cursor itemsWith: {#absentItem1. Array. #absentItem2}.
	
	self assert: found size equals: 3.
	self assert: found first equals: nil.
	self assert: found last equals: nil.
	self assert: found second actualObject equals: Array.
	self assert: found second isPrepared.
	self assert: found second position equals: (queryResult actualItems indexOf: Array).