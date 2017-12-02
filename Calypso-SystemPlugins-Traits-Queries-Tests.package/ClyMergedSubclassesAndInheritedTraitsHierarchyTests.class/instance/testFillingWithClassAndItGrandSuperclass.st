tests
testFillingWithClassAndItGrandSuperclass
	
	queryResult fillWith: { ClyClass1FromP1. ClySubclassLOfSubclassMFromP3 }.
	
	self assertItems: {ClyClass1FromP1. 0. ClySubclassLOfSubclassMFromP3. 1}