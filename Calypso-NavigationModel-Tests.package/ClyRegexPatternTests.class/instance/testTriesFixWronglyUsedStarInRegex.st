tests
testTriesFixWronglyUsedStarInRegex

	| pattern |
	pattern := ClyRegexPattern with: '*abs'.
	
	self assert: (pattern matches: 'abs').
	self deny: (pattern matches: 'ert')