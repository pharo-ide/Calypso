tests
testIsAffectedByChangeOfMethodOfTargetClassWhichOverridesAbstractOne
	query
		scope:
			(ClyClassScope
				ofAll: {ClyClassWhichInheritsAbstractClass}
				in: environment).
	self
		assert:
			(query
				isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #abstractMethod1)