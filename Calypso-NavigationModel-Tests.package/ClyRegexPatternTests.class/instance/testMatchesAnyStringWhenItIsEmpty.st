tests
testMatchesAnyStringWhenItIsEmpty

	| pattern |
	pattern := ClyRegexPattern with: ''.
	
	self assert: (pattern matches: 'any string')