tests-class variables methods
testBuildingFromClassVariablesMethodGroupWithSingleVariableAndSingleSubclass
	| group |
	group := ClyVariableMethodGroup 
					classes: {ClySubclassLOfClass2FromP1} 
					variable: (ClyClass2FromP1 classVariableNamed: #ClassVar1).
		
	self retrieveFromGroup: group.

	self assertMethods: #(subclassClassVar1Reader subclassClassVar1Writer)