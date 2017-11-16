tests
testFillingWithThreePackages

	| groups |
	queryResult fillWith: { ClySubclassMOfClass1FromP2 package. 
		ClySubclassLOfSubclassMFromP3 package.
		ClyClass1FromP1 package}.
	groups := queryResult items collect: #package as: Array.
	self assert: groups equals: { ClyClass1FromP1 package.
		ClySubclassMOfClass1FromP2 package.
		ClySubclassLOfSubclassMFromP3 package}