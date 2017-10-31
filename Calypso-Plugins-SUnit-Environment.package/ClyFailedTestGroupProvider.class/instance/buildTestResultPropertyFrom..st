building groups
buildTestResultPropertyFrom: testCases
	| property |
	property := 	ClyTestResultProperty new.
		
	testCases do: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property accumulateFailures: failures andErrors: errors]
	].
	
	^property