tests-filter classes
testMatchesClassOfPackageWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'Environment-System-Tests'.
	
	self assert: (filter matches: self itemOfThisTestClass)