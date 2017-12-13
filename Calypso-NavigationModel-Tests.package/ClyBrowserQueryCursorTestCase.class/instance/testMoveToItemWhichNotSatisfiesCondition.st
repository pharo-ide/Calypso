tests
testMoveToItemWhichNotSatisfiesCondition
	
	| found |
	found := cursor moveToItemWhich: [:each | each actualObject = Object].
	self assert: found.
	self assert: cursor position equals: 2.
	
	found := cursor moveToItemWhich: [:each | false].
	self deny: found.	
	self assert: cursor position equals: 2