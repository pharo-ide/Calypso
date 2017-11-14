tests
testMethods

	| selectors |
	group classScope: { ClyClassWhichInheritsAbstractClass }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(abstractMethod1 #overriddenMethod)