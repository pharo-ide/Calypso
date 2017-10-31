browser items
prepareBrowserItem: anItem ofPackage: aPackage
	"this can be slow and proper implementation will require recomputing for every test run
	which slow down running of big test suite. 
	So for package and class group we only detect that it has tests"

	(aPackage classes anySatisfy: [:testCase | 
		testCase isTestCase and: [testCase isAbstract not]])
		ifFalse: [ ^self ].
		
	anItem addProperty: ClyTestResultProperty new