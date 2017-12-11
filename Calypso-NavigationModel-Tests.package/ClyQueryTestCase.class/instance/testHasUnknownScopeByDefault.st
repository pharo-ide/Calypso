tests
testHasUnknownScopeByDefault

	query := query class new.
	self assert: query scope equals: ClyUnknownScope instance