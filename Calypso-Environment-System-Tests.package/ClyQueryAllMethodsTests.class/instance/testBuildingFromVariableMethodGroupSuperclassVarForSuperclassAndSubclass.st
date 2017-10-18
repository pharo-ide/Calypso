tests-variable methods
testBuildingFromVariableMethodGroupSuperclassVarForSuperclassAndSubclass
	| group |
	group := ClyVariableMethodGroup 
					classes: {ClyClass1FromP1. ClySubclassN2OfClass1FromP1} 
					variable: (ClyClass1FromP1 slotNamed: #instanceSideVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(instanceSideVar1ReaderMethod instanceSideVar1WriterMethod superclassVar1ReaderMethod superclassVar1WriterMethod)