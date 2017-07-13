tests-classes methods
testBuildingFromTwoClasses
	| classes |
	classes := environment 
		selectScope: ClyLocalClassScope of: { ClyClass1FromP1. ClySubclassN1OfClass1FromP1}.
		
	self retrieveContentFrom: classes.

	self assertMethods:  #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #noTagMethod #superclassTag1Method #tag1Method1 #tag1Method1 #tag1Method2 #tag2Method1)