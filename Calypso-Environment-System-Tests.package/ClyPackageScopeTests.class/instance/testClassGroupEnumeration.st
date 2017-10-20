tests
testClassGroupEnumeration
	| environment |
	environment := ClyNavigationEnvironment new.
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new.
	scope := ClyPackageScope of: { ClyClass7WithTag1FromP5 package } in: environment.
	scope classGroupsDo: [ :each | result add: each].
	
	self assert: (result collect: #class) equals: { ClyNoTagClassGroup. ClyTaggedClassGroup. ClyExtendedClassGroup} asSet.
	self 
		assert: (result select:[:each | each class = ClyTaggedClassGroup] thenCollect: #tag)
		equals: ClyClass7WithTag1FromP5 package tagsForClasses asSet