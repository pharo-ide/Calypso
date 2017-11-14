tests
testMethods

	| selectors |
	group classScope: { ClyClassWhichInheritsAbstractSubclass }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(abstractMethod2 abstractSubclassMethod)