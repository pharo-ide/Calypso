tests
testComparison

	| pattern pattern2 |
	pattern := ClySubstringPattern with: 'subString' caseSensitive: true.
	pattern2 := ClySubstringPattern with: 'subString' copy caseSensitive: true.
	self assert: pattern equals: pattern2.
	self assert: pattern hash equals: pattern2 hash.
	
	pattern2 value: 'another pattern'.
	self deny: pattern = pattern2.
	
	pattern2 value: pattern value.
	pattern2 isCaseSensitive: pattern isCaseSensitive not.
	self deny: pattern = pattern2