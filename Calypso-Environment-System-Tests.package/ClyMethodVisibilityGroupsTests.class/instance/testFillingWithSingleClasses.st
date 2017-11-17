tests
testFillingWithSingleClasses

	| group visibilityLevel |
	query scope basisObjects: { ClyClass1FromP1 }.
	queryResult fillWith: {ClyClass2FromP1}.
	
	self assert: queryResult size equals: 1.
	group := queryResult items first actualObject.
	self assert: group class equals: ClyInheritedMethodGroup.
	self assert: group name equals: ClyClass2FromP1 name.
	self 
		assert: group methodQuery 
		equals: (ClyAllMethods from: ClyClassScope of: {ClyClass2FromP1}).
	self assert: group visibilityLevels size equals: 1.
	visibilityLevel := group visibilityLevels first.
	self assert: visibilityLevel class equals: ClySuperclassVisibilityLevel.
	self assert: visibilityLevel visibleClassScope equals: (ClyClassScope of: { ClyClass1FromP1 }).
	self assert: visibilityLevel extraClassScope equals: (ClyClassScope of: { ClyClass2FromP1 })