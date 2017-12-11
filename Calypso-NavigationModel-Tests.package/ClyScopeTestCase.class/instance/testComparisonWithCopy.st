tests
testComparisonWithCopy

	| copy |
	scope := self createSampleScope.
	copy := scope copy.	
	self assert: scope equals: copy.
	self assert: scope hash equals: copy hash