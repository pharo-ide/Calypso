tests
testCaseSensitiveMathingString

	| pattern |
	pattern := ClySubstringPattern with: 'subString' caseSensitive: true.
	
	self assert: (pattern matches: 'start subString end').
	
	self deny: (pattern matches: 'start substring end').