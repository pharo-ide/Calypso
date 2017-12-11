controlling
testRan: aTestSuiteEnded
	| event |
	
	"testResult actually returns the TestCase class ran"	
	event := ClyTestCaseRan testCase: aTestSuiteEnded testResult.
	
	environment systemChanged: event