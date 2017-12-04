tests
testClassEnumerationOverClassShouldStopAtObject

	scope := ClyInterestingSuperclassScope of: { Class }.
	
	scope classesDo: [ :each | result add: each].
	
	self assert: result asSet equals: {ClassDescription. Behavior} asSet