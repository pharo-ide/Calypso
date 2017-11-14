tests
testIncludesDeprecatedMethod

	group classScope: { ClyClassWithDeprecatedMethods }.	
	
	self assert: (group includesMethod: ClyClassWithDeprecatedMethods>>#deprecatedMethod1)