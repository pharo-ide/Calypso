tests
testFillingWithThreePackages

	queryResult fillWith: { ClySubclassMOfClass1FromP2 package. 
		ClySubclassLOfSubclassMFromP3 package.
		ClyClass1FromP1 package}.
	
	self assertItems: { ClyClass1FromP1 package. 0.
		ClySubclassMOfClass1FromP2 package. 0.
		ClySubclassLOfSubclassMFromP3 package. 0}