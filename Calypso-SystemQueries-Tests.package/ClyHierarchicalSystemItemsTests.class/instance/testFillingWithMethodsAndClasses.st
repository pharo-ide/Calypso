tests
testFillingWithMethodsAndClasses

	queryResult fillWith: {ClyClass1FromP1. ClyClass1FromP1 >> #tag1Method1}.

	self 
		assertItems: #(tag1Method1 0 ClyClass1FromP1 0) 
		withValue: [ :each | each name ]