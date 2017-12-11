tests
testFromThreeMethods

	self queryFromScope: ClyMethodScope ofAll: {
		ClyClassWhichInheritsAbstractClass >> #abstractMethod1. 
		ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod.
		ClyClassWhichInheritsAbstractClass >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 #overriddenMethod)