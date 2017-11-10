tests
testIsAffectedByChangeOfMethodOfTargetClassWhichOverridesAbstractOne

	query scope: (ClyClassScope of: { ClyClassWhichInheritsAbstractClass }).	
	
	self assert: (
		query isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)