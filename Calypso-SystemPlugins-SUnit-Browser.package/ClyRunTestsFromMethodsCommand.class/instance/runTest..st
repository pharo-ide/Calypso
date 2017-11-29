execution
runTest: testMethod

	| testClass testResult |
	testClass := testMethod methodClass.
	testResult := testClass debug: testMethod selector.
	
	self
		notifyUserAboutResults: testResult 
		with: 'Method: ' , testMethod methodClass asString , '>>#' , testMethod selector asString