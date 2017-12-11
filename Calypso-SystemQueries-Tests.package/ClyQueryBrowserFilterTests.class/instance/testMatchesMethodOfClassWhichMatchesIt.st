tests-filter methods
testMatchesMethodOfClassWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'FilterTests'.
	
	self assert: (filter matches: self itemOfThisTestMethod)