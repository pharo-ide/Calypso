tests
testMethods

	| selectors |
	group classes: { ClyClassWithUndeclares }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(#method1WithUndeclares #method2WithUndeclares)