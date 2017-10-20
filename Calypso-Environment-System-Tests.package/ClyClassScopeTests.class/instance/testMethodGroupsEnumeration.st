tests
testMethodGroupsEnumeration

	| environment |
	environment := ClyNavigationEnvironment new.
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new.
	scope := ClyClassScope of: { ClyClass1FromP1 } in: environment.
	
	scope methodGroupsDo: [ :each | result add: each].
	
	self assert: (result collect: #class) equals: { ClyInheritedMethodGroup. ClyNoTagMethodGroup. ClyTaggedMethodGroup} asSet.
	self 
		assert: (result select: #isBasedOnMethodTag thenCollect: #tagName)
		equals: #(tag1 tag2) asSet