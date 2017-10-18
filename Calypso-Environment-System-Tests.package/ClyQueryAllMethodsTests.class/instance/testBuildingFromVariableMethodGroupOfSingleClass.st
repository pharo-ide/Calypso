tests-var declaration methods
testBuildingFromVariableMethodGroupOfSingleClass
	| group |
	group := ClyVarsDeclarationMethodGroup 
					classes: {ClySubclassN2OfClass1FromP1} 
					variables: {ClyClass1FromP1 slotNamed: #instanceSideVar1.
						ClySubclassN2OfClass1FromP1 slotNamed: #subclassN2Var}.
		
	self retrieveFromGroup: group.

	self assertMethods: #(subclassN2VarReaderMethod subclassN2VarWriterMethod
		superclassVar1ReaderMethod superclassVar1WriterMethod)