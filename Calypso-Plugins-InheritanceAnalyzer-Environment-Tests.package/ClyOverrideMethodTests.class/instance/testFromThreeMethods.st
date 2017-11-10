tests
testFromThreeMethods

	self queryInScope: ClyMethodScope of: {
		ClyClassWhichInheritsAbstractClass >> #abstractMethod1. 
		ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod.
		ClyClassWhichInheritsAbstractClass >> #overriddenMethod}.
	
	self assert: foundSelectors equals: #(abstractMethod1 #overriddenMethod)