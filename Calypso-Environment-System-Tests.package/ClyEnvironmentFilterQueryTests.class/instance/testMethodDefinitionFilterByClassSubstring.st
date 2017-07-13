tests-methods definition filter
testMethodDefinitionFilterByClassSubstring

	| scope allMethods filteredMethods items |
	scope := environment selectScope: ClyLocalClassScope of: self class superclass subclasses.
	allMethods := scope query: ClySortedMethods.
	filteredMethods := allMethods filterItemsBy: (ClyMethodDefinitionFilter pattern: self class name).
	
	items := filteredMethods retrieveAll.
	
	self assert: items size equals: self class localMethods size