tests-variable methods
testBuildingFromVariableReadMethodGroupOfSubclassAndSuperclassVar
	| group |
	group := ClyVariableReadMethodGroup 
					classes: {ClySubclassN2OfClass1FromP1} 
					variable: (ClyClass1FromP1 slotNamed: #instanceSideVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(superclassVar1ReaderMethod)