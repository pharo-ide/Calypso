tests
testMatchesStringWhichMatchesCorrectRegex

	| pattern |
	pattern := ClyRegexPattern with: '.abs'.
	
	self assert: (pattern matches: '1abs').
	self deny: (pattern matches: 'abs')