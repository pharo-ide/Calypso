tests-classes methods
testFromSingleClass
	| classes |
	classes := environment 
		selectScope: ClyEnvironmentScope of: { ClyClass1FromP1}.
		
	self retrieveContentFrom: classes.

	self assertMethods: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)