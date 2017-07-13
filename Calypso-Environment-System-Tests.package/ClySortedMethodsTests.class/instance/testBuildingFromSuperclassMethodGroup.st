tests-superclass methods
testBuildingFromSuperclassMethodGroup
	| group |
	group := ClySuperclassMethodGroup classes: {ClySubclassN1OfClass1FromP1 } superclass: ClyClass1FromP1.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)