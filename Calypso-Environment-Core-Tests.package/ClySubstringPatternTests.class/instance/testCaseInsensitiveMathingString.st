tests
testCaseInsensitiveMathingString

	| pattern |
	pattern := ClySubstringPattern with: 'subString' caseSensitive: false.
	
	self assert: (pattern matches: 'start subString end').
	self assert: (pattern matches: 'start substring end').
	
	self deny: (pattern matches: 'another string').