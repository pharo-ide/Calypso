tests-filter by script
testUsingBadScriptWithoutClosingBracket

	filter := ClyQueryBrowserFilter substringPattern: '[:each | true '.
	
	self assert: (filter matches: self itemOfThisTestMethod).
	self assert: (filter matches: (ClyEnvironmentItem with: Object >> #printString)).