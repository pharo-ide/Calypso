tests-general
testFilteringContent

	| scope filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	filteredMethods := scope query: query.
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: 2.
	self assert: items first name equals: testSelector asString.
	self assert: items first actualObject equals: thisContext method