tests
testFromSingleClass

	self queryFromScope: ClyClassScope of: ClyClass1FromP1.
	
	self assert: foundSelectors equals: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)