tests
testCreationWithEmptySubqueriesShouldReturnUnknownQuery

	query := self queryClass with: {}.
	
	self assert: query == ClyUnknownQuery instance