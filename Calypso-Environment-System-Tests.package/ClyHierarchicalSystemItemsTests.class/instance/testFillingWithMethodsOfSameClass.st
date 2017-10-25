tests
testFillingWithMethodsOfSameClass

	queryResult fillWith: (
		#(tag1Method1 instanceSideVar1WriterMethod instanceSideVar1ReaderMethod) 
			collect: [:each | ClyClass1FromP1 >> each]).

	self 
		assertItems: #(#instanceSideVar1ReaderMethod 0 #instanceSideVar1WriterMethod 0 #tag1Method1 0) 
		withValue: [ :each | each name ]