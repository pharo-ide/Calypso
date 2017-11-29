tests-filter methods
testNotMatchesMethodWithWrongClassAndPackageAndSelector

	filter := ClyQueryBrowserFilter substringPattern: 'filter not matches package, class or selector'.
	
	self deny: (filter matches: self itemOfThisTestMethod)