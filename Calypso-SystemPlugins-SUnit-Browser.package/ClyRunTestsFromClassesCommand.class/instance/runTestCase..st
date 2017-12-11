execution
runTestCase: testCase

	| testResult |
	testResult := testCase classForTestResult new.
	
	self runTestCase: testCase results: testResult.
	
	testResult updateResultsInHistory.
	
	self  
		notifyUserAboutResults: testResult 
		with: testCase name