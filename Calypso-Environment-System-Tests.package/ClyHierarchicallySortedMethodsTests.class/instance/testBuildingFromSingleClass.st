tests
testBuildingFromSingleClass
	| classes |
	classes := environment selectScope: ClyLocalClassScope of: { ClyClass1FromP1}.

	self retrieveContentFrom: classes.

	self assertItems: #(#instanceSideVar1ReaderMethod 0 #instanceSideVar1WriterMethod 0 #superclassTag1Method 0 #tag1Method1 0) withValue: [ :each | each name ]