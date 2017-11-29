tests-filter methods
testMatchesMethodOfPackageWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'Environment-System-Tests'.
	
	self assert: (filter matches: self itemOfThisTestMethod)