tests-filter by script
testUsingBadScriptWhichNotReturnBoolean

	filter := ClyQueryBrowserFilter substringPattern: '[:each | each selector]'.
	
	self assert: (filter matches: self itemOfThisTestMethod).
	self assert: (filter matches: (ClyFormattedResultItem with: Object >> #printString)).