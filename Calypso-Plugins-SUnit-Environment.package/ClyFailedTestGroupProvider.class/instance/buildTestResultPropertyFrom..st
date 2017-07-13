building groups
buildTestResultPropertyFrom: testCases
	| property |
	property := 	ClyTestResultProperty 
			count: 0
			successes: 0
			failures: 0
			errors: 0.

	testCases do: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property 
				failuresCount: property failuresCount + failures;
				errorsCount: property errorsCount + errors;
				allCount: property allCount + failures + errors]
	].
	
	^property