tests
testFromSingleClass

	| actualSelectors |
	self queryInScope: ClyClassScope of: {ClyClass1FromP1}.

	actualSelectors := (resultItems collect: #selector) sorted asArray.
	
	self assert: actualSelectors equals: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)