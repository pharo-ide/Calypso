tests-class variables methods
testBuildingFromClassVariablesMethodGroupWithSingleVariableAndClassAndSubclass
	| group |
	group := ClyVariableMethodGroup 
					classes: {ClyClass2FromP1. ClySubclassLOfClass2FromP1} 
					variable: (ClyClass2FromP1 classVariableNamed: #ClassVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(instanceSideClassVar1Reader instanceSideClassVar1Writer
			subclassClassVar1Reader subclassClassVar1Writer)