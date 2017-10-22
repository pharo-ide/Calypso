tests-methods definition filter
testMethodDefinitionFilterByScript

	| scope allMethods filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: {ClyClass1FromP1. ClyClassWithTraits }.
	allMethods := scope query: ClySortedMethods.
	filteredMethods := allMethods filterItemsBy: (
		ClyQueryBrowserFilter pattern: '[:each | each methodClass traits isEmpty]').
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: ClyClass1FromP1 localMethods size.
	self assert: items first actualObject methodClass equals: ClyClass1FromP1