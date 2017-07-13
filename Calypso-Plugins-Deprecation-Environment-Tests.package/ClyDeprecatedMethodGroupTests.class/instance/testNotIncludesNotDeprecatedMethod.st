tests
testNotIncludesNotDeprecatedMethod

	group classes: { ClyClassWithDeprecatedMethods }.	
	
	self deny: (group includesMethod: ClyClassWithDeprecatedMethods>>#notDeprecatedMethod)