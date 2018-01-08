controlling
testRan: aTestSuiteEnded
	| event runTestCase testedClass |
	
	"testResult actually returns the TestCase class ran"	
	runTestCase := aTestSuiteEnded testResult.
	testedClass := self findTestedClassCoveredBy: runTestCase ifAbsent: [ ^self ].
	"Here we just reuse normal event with tested class which is covered by runTestCase.
	Logic for updates is same in that case"	
	event := ClyTestCaseRan testCase: testedClass.
	environment systemChanged: event