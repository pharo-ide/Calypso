tests-filter methods
testMatchesMethodOfPackageWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'SystemQueries-Tests'.
	
	self assert: (filter matches: self itemOfThisTestMethod)