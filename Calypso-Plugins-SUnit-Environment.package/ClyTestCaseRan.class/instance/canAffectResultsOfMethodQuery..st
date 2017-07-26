event processing
canAffectResultsOfMethodQuery: aMethodQuery

	^testCase localMethods anySatisfy: [:each |  
		each isTestMethod and: [ aMethodQuery selectsMethod: each]]