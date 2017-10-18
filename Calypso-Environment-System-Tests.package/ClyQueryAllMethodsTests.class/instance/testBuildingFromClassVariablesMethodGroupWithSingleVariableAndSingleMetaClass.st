tests-class variables methods
testBuildingFromClassVariablesMethodGroupWithSingleVariableAndSingleMetaClass
	| group |
	group := ClyVariableMethodGroup 
					classes: {ClyClass2FromP1 class} 
					variable: (ClyClass2FromP1 classVariableNamed: #ClassVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(classSideClassVar1Reader classSideClassVar1Writer)