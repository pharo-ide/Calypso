accessing
accumulateTestMethod: aMethod
	| testSelector result |	
	testSelector := aMethod selector.
	aMethod origin withAllSubclassesDo: [ :concreteTestCase | 
		concreteTestCase isAbstract ifFalse: [
			self accumulateTest: testSelector of: concreteTestCase.
			
			result := testCaseResults 
				at: concreteTestCase ifAbsentPut: [ ClyTestResultProperty new ].
			result accumulateTest: testSelector of: concreteTestCase ]]