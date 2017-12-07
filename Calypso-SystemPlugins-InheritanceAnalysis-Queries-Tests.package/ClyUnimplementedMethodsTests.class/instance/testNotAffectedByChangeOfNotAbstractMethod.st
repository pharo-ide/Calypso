tests
testNotAffectedByChangeOfNotAbstractMethod
	query
		scope:
			(ClyClassScope
				ofAll: {ClyClassWhichInheritsAbstractClass}
				in: environment).
	self
		deny:
			(query
				isAffectedByChangedMethod: ClyClassWhichInheritsAbstractClass >> #notOverriddenMethod)