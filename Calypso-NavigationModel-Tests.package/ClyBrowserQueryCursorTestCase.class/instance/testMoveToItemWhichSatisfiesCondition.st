tests
testMoveToItemWhichSatisfiesCondition
	
	| found |
	found := cursor moveToItemWhich: [:each | each actualObject = Object].
	
	self assert: found.	
	self assert: cursor position equals: 2.
	self assert: cursor currentItem actualObject equals: Object.