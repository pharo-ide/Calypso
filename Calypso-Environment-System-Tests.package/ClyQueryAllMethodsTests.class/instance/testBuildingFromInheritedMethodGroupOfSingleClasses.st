tests-inherited methods
testBuildingFromInheritedMethodGroupOfSingleClasses
	| group |
	group := ClyInheritedMethodGroup classes: {ClySubclassN1OfClass1FromP1 }.
		
	self retrieveFromGroup: group.

	self assertMethods: #(instanceSideVar1ReaderMethod instanceSideVar1WriterMethod 
		superclassTag1Method )