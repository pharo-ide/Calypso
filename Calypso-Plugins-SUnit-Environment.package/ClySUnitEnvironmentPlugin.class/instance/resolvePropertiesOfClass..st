items resolving
resolvePropertiesOfClass: anItem

	| testCase |
	testCase := anItem actualObject.
	(testCase isTestCase not or: [testCase isAbstract]) ifTrue: [ ^self ].
	
	anItem addProperty: (
		ClyTestResultProperty 
			count: testCase allTestSelectors size
			successes: (testCase history at: #passed) size
			failures: (testCase history at: #failures) size		
			errors: (testCase history at: #errors) size
	)