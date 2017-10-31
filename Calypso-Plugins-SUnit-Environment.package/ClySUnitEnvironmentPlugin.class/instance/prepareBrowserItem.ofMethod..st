items resolving
prepareBrowserItem: anEnvironmentItem ofMethod: aMethod

	aMethod isTestMethod ifFalse: [ ^self ].
	
	anEnvironmentItem addProperty: (
		ClyTestResultProperty 
			count: 1 
			successes: aMethod isPassedTest asBit
			failures: aMethod isFailedTest asBit		
			errors: aMethod isErrorTest asBit
	)