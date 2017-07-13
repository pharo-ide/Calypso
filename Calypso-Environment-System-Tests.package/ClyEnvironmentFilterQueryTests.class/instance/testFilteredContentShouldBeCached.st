tests-general
testFilteredContentShouldBeCached

	| scope filteredMethods filteredMethods2 |
	scope := environment selectScope: ClyLocalClassScope of: { self class }.
	
	filteredMethods := (scope query: query) observedContent.
	filteredMethods2 := (scope query: self createQuery) observedContent.

	self assert: filteredMethods == filteredMethods2