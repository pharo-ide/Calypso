tests-filter classes
testMatchesClassWhichNameMatchesIt

	filter := ClyQueryBrowserFilter substringPattern: 'FilterTests'.
	
	self assert: (filter matches: self itemOfThisTestClass)