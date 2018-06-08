accessing
accumulateTestMethod: aMethod
	| testSelector result inheritingScope |	
	testSelector := aMethod selector.
	inheritingScope := (ClyClassScope of: aMethod origin) withInheritingScope.
	inheritingScope classesDo: [ :concreteTestCase | 
		(concreteTestCase isTestCase and: [concreteTestCase isAbstract not]) ifTrue: [
			self accumulateTest: testSelector of: concreteTestCase.
			
			result := testCaseResults 
				at: concreteTestCase ifAbsentPut: [ ClyTestResultProperty new ].
			result accumulateTest: testSelector of: concreteTestCase ]]