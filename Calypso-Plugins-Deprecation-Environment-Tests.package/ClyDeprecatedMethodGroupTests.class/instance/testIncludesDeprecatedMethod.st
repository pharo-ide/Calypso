tests
testIncludesDeprecatedMethod

	group classes: { ClyClassWithDeprecatedMethods }.	
	
	self assert: (group includesMethod: ClyClassWithDeprecatedMethods>>#deprecatedMethod1)