tests
testMethods

	| selectors |
	group classScope: { ClyAbstractClassExample }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(abstractMethod1 abstractMethod2)