tests-filter classes
testNotMatchesClassWithWrongNameAndPackage

	filter := ClyQueryBrowserFilter substringPattern: 'filter not matches class name and package'.
	
	self deny: (filter matches: self itemOfThisTestClass)