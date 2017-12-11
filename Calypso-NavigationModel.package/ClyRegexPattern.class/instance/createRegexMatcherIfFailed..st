testing
createRegexMatcherIfFailed: errorBlock

	value trimBoth ifEmpty: [^errorBlock value].
	
	^ [ value asRegexIgnoringCase ]
		on: RegexSyntaxError
		do: [ :ex | ^self createFixedRegexMatcherIfFailed: errorBlock ]