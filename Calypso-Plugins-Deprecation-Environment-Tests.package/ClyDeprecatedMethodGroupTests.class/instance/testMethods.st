tests
testMethods

	| selectors |
	group classes: { ClyClassWithDeprecatedMethods }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(deprecatedMethod1 deprecatedMethod2)