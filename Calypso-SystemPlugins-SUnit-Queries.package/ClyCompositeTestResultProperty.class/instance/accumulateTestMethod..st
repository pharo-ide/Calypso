accessing
accumulateTestMethod: aMethod
	| testSelector result |	
	testSelector := aMethod selector.
	aMethod methodClass withAllSubclassesDo: [ :concreteTestCase | 
		(concreteTestCase isTestCase and: [concreteTestCase isAbstract not]) ifTrue: [
			self accumulateTest: testSelector of: concreteTestCase.
			
			result := testCaseResults 
				at: concreteTestCase ifAbsentPut: [ ClyTestResultProperty new ].
			result accumulateTest: testSelector of: concreteTestCase ]]