method group decoration
decorateMethodGroupItem: methodGroupItem
	| property |
	super decorateMethodGroupItem: methodGroupItem.
	
	property := 	ClyTestResultProperty new.
	scope classesDo: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property accumulateFailures: failures andErrors: errors]
	].	
	methodGroupItem addProperty: property