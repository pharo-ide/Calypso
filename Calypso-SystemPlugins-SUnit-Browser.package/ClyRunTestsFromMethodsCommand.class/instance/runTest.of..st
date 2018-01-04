execution
runTest: testSelector of: testClass

	| testResult |
	testResult := testClass debug: testSelector.
	
	self
		notifyUserAboutResults: testResult 
		with: 'Method: ' , testClass asString , '>>#' , testSelector asString