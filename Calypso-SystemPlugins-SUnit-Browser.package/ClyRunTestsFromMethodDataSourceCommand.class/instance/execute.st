execution
execute
	| testSuite result |
	testSuite := self buildTestSuite.
	
	result := testSuite run.
	
	result updateResultsInHistory.
	
	self
		notifyUserAboutResults: result 
		with: 'Tests complete'