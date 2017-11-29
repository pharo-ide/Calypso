item group decoration
decorateItemGroup: methodGroupItem
	| property |
	super decorateItemGroup: methodGroupItem.
	
	property := 	ClyTestResultProperty new.
	scope classesDo: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property accumulateFailures: failures andErrors: errors]
	].	
	methodGroupItem addProperty: property