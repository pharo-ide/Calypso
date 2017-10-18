tests-classes methods
testSortedByClassesWhenSelectorSame
	| methods |
	methods := environment 
		selectScope: ClyMethodScope of: { 
			ClyClass1FromP1 >> #tag1Method1. ClySubclassN1OfClass1FromP1 >> #tag1Method1}.
		
	self retrieveContentFrom: methods.

	self assert: actualObjects first == (ClyClass1FromP1 >> #tag1Method1).
	self assert: actualObjects last == (ClySubclassN1OfClass1FromP1 >> #tag1Method1).