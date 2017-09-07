tests
testMethods

	| selectors |
	group classes: { ClyClassWithUndeclares }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(#undeclaresMethod1 #undeclaresMethod2)