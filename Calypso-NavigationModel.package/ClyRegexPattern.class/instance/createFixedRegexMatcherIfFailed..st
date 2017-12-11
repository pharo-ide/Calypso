testing
createFixedRegexMatcherIfFailed: errorBlock

	| fixedPattern |
	fixedPattern := value copyReplaceAll: '*' with: '.*' .
	
	^ [ fixedPattern asRegexIgnoringCase ]
		on: RegexSyntaxError
		do: [ :ex | errorBlock value ]