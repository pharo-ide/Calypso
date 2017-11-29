tests
testCaseInsensitiveByDefault

	| pattern |
	pattern := ClySubstringPattern with: 'subString'.
	
	self deny: pattern isCaseSensitive