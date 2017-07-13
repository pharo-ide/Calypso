items resolving
resolveMetadataOfMethods: anEnvironmentContent
	| property |
	property := 	ClyTestResultProperty 
			count: 0
			successes: 0
			failures: 0
			errors: 0.

	anEnvironmentContent items do: [ :methodItem | | eachMethod |
		eachMethod := methodItem actualObject.
		eachMethod isTestMethod ifTrue: [ 
			property 
				allCount: property allCount + 1;
				successesCount: property successesCount + eachMethod isPassedTest asBit;
				failuresCount: property failuresCount + eachMethod isFailedTest asBit;
				errorsCount: property errorsCount + eachMethod isErrorTest asBit]].
	
	property allCount > 0 ifTrue: [ anEnvironmentContent addMetaProperty: property ]