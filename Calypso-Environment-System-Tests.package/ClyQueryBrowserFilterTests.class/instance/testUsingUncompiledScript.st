tests-filter by script
testUsingUncompiledScript

	filter := ClyQueryBrowserFilter substringPattern: '[:each | each 123selector]'.
	
	self assert: (filter matches: self itemOfThisTestMethod).
	self assert: (filter matches: (ClyEnvironmentItem with: Object >> #printString)).