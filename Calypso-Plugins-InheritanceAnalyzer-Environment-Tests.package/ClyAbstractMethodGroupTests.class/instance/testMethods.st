tests
testMethods

	| selectors |
	group classes: { ClyAbstractClassExample }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(abstractMethod1 abstractMethod2)