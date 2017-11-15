tests-superclass methods
testBuildingFromSuperclassMethodGroup
	| group |
	group := ClyVisibilityMethodGroup forScope: {ClySubclassN1OfClass1FromP1 } toShow: ClyClass1FromP1.
		
	self retrieveFromGroup: group.

	self assertMethods: #(#instanceSideVar1ReaderMethod #instanceSideVar1WriterMethod #superclassTag1Method #tag1Method1)