tests
testIsAffectedByChangeOfMethodOfTargetClassWhichOverridesAbstractOne
	query scope: (ClyClassScope	of: ClyClassWhichInheritsAbstractClass in: environment).
		
	self assert: (query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)