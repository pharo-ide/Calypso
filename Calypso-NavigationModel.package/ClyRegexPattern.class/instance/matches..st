testing
matches: aString
	| matcher |
	matcher := self createRegexMatcherIfFailed: [^true].
	
	^matcher search: aString