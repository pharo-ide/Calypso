instance creation
regexPattern: regexString
	^self 	pattern: (ClyRegexPattern with: regexString)