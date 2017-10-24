tests
testMethodGroupsEnumeration

	| environment |
	environment := ClyNavigationEnvironment new.
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new.
	scope := ClyClassScope of: { ClyClass1FromP1 } in: environment.
	
	scope methodGroupsDo: [ :each | result add: each actualObject].
	
	self assert: (result collect: #class) equals: { ClyInheritedMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (result select:[:each | each class = ClyTaggedMethodGroup] thenCollect: #tag)
		equals: ClyClass1FromP1 tagsForMethods asSet