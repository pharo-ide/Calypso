items resolving
resolvePropertiesOf: myEnvironmentItem
	| property |
	super resolvePropertiesOf: myEnvironmentItem.

	property := 	ClyTestResultProperty count: 0 successes: 0 failures: 0 errors: 0.

	classes do: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property 
				failuresCount: property failuresCount + failures;
				errorsCount: property errorsCount + errors;
				allCount: property allCount + failures + errors]
	].
	
	myEnvironmentItem addProperty: property