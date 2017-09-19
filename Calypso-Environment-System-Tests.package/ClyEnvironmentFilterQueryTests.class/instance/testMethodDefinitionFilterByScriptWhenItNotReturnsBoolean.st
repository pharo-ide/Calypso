tests-methods definition filter
testMethodDefinitionFilterByScriptWhenItNotReturnsBoolean

	| scope allMethods filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: {ClyClass1FromP1}.
	allMethods := scope query: ClySortedMethods.
	filteredMethods := allMethods filterItemsBy: (
		ClyQueryResultFilter pattern: '[:each | ]').
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: ClyClass1FromP1 localMethods size