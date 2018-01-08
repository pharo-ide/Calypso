testing
selectsMethod: aMethod
	
	^aMethod isTestMethod and: [aMethod isPassedTest not]