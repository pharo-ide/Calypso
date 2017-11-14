tests
testMethods

	| selectors |
	group classScope: { ClyClassWithDeprecatedMethods }.	
	
	selectors := (group methods collect: #selector) sorted.
	
	self assert: selectors equals: #(deprecatedMethod1 deprecatedMethod2)