tests
testFillingWithSingleClassVar

	queryResult fillWith: { ClyClassVariable named: #ClassVar1 declaredIn: ClyClass2FromP1 }.
	
	self assertItems: {ClyInheritedMethodGroup. 0. ClyClassVariablesMethodGroup. 0}.
	self 
		assert: items last actualObject variables asArray
		equals: {ClyClassVariable named: #ClassVar1 declaredIn: ClyClass2FromP1}