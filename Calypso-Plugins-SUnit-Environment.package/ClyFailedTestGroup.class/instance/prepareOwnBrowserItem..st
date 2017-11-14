items resolving
prepareOwnBrowserItem: myItem
	| property |
	super prepareOwnBrowserItem: myItem.

	property := 	ClyTestResultProperty new.

	classScope do: [:testCase | | failures errors |
		(testCase isTestCase and: [testCase isAbstract not]) ifTrue: [ 
			failures := (testCase history at: #failures) size.
			errors := (testCase history at: #errors) size.
			property accumulateFailures: failures andErrors: errors]
	].
	
	myItem addProperty: property