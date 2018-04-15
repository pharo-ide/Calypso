tests
testClassGroupEnumeration
	environment addPlugin: ClyDefaultSystemEnvironmentPlugin new.
	scope := ClyPackageScope of: ClyClass7WithTag1FromP5 package in: environment.
	
	scope classGroupsDo: [ :each | result add: each ].
	
	self
		assert: (result collect: #class as: Set)
		equals: {ClyNoTagClassGroup. ClyClassTagItem. ClyClassGroup} asSet.
	self
		assert: 
			(result
				select: [ :each | each class = ClyClassTagItem ]
				thenCollect: #tag) sorted asArray
		equals: ClyClass7WithTag1FromP5 package tagsForClasses sorted asArray