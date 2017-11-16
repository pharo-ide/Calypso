tests
testMethodGroupsEnumeration

	| environment |
	environment := ClyNavigationEnvironment new.
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new.
	scope := ClyClassScope of: { ClyClass1FromP1 } in: environment.
	
	scope methodGroupsDo: [ :each | result add: each].
	
	self assert: (result collect: #class as: Set) equals: { ClyInheritedMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (result select:[:each | each class = ClyTaggedMethodGroup] thenCollect: #tag) sorted
		equals: ClyClass1FromP1 tagsForMethods sorted