tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWithDeprecatedMethods >> #deprecatedMethod1. 
		ClyClassWithDeprecatedMethods >> #deprecatedMethod2.
		ClyClassWithDeprecatedMethods >> #notDeprecatedMethod}.
	
	self assert: foundSelectors sorted asArray equals: #(deprecatedMethod1 deprecatedMethod2)