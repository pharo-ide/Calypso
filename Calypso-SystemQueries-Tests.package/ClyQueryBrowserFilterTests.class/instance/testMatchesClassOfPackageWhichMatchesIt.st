tests-filter classes
testMatchesClassOfPackageWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'SystemQueries-Tests'.
	
	self assert: (filter matches: self itemOfThisTestClass)