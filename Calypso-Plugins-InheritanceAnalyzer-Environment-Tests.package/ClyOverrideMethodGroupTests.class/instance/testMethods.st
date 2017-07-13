tests
testMethods

	| selectors |
	group classes: { ClyClassWhichInheritsAbstractClass }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(abstractMethod1 #overriddenMethod)