tests
testIsNotBasedOnAnyObject

	scope := self createSampleScope.

	self deny: (scope isBasedOn: #anyObject)