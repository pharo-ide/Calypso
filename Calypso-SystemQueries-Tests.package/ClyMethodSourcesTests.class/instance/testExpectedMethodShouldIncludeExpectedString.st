tests
testExpectedMethodShouldIncludeExpectedString

	self assert: ((self class >> #methodWithExpectedStringInSources) sourceCode 
		includesSubstring: self expectedSourceCodeSubstring caseSensitive: false)