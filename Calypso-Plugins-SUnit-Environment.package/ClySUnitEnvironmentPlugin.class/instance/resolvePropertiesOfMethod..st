items resolving
resolvePropertiesOfMethod: anEnvironmentItem

	| method |
	method := anEnvironmentItem actualObject.
	method isTestMethod ifFalse: [ ^self ].
	
	anEnvironmentItem addProperty: (
		ClyTestResultProperty 
			count: 1 
			successes: method isPassedTest asBit
			failures: method isFailedTest asBit		
			errors: method isErrorTest asBit
	)