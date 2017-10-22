tests-filter methods
testMatchesMethodWithSelectorWhichMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'MethodWithSelector'.
	
	self assert: (filter matches: self itemOfThisTestMethod)