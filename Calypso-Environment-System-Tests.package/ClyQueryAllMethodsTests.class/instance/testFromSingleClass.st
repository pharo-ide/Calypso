tests-classes methods
testFromSingleClass

	self queryInScopeOf: {ClyClass1FromP1}.

	self assertMethods: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)