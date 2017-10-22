tests-methods definition filter
testMethodDefinitionFilterByPackageSubstring

	| scope allMethods filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: {ClyClass1FromP1. ClyClassWithTraits }.
	allMethods := scope query: ClySortedMethods.
	filteredMethods := allMethods filterItemsBy: (ClyQueryBrowserFilter substringPattern: 'AndTraits').
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: ClyClassWithTraits localMethods size.
	self assert: items first actualObject methodClass equals: ClyClassWithTraits