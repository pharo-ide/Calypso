tests
testNotIncludesNotDeprecatedMethod

	group classScope: { ClyClassWithDeprecatedMethods }.	
	
	self deny: (group includesMethod: ClyClassWithDeprecatedMethods>>#notDeprecatedMethod)