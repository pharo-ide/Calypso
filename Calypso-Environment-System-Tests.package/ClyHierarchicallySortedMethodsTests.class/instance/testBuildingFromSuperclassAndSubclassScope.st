tests
testBuildingFromSuperclassAndSubclassScope
	| methods |
	methods := environment 
		selectScope: ClyInstanceSideScope of: {ClyClass1FromP1. ClySubclassN1OfClass1FromP1}.
		
	self retrieveContentFrom: methods.

	self assertItems: #(#instanceSideVar1ReaderMethod 0 #instanceSideVar1WriterMethod 0 #superclassTag1Method 0 #tag1Method1 0
		#noTagMethod 1 tag1Method1 1 tag1Method2 1 tag2Method1 1) withValue: [ :each | each name ]