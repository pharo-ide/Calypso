tests-variable methods
testBuildingFromVariableWriteMethodGroupOfSingleClass
	| group |
	group := ClyVariableWriteMethodGroup 
					classes: {ClyClass1FromP1} 
					variable: (ClyClass1FromP1 slotNamed: #instanceSideVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(instanceSideVar1WriterMethod)