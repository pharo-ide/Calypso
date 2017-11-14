tests-inherited methods
testBuildingFromInheritedMethodGroupOfMetaclass
	| group |
	group := ClyInheritedMethodGroup classScope: {ClySubclassN1OfClass1FromP1 class}.
		
	self retrieveFromGroup: group.

 	self assertMethods: #(classSideMethodFromClass1)