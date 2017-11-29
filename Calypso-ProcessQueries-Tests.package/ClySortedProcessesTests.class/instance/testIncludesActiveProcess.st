tests
testIncludesActiveProcess
		
	self retrieveContentFrom: environment systemScope.
		
	self assert: (actualObjects includes: Processor activeProcess)