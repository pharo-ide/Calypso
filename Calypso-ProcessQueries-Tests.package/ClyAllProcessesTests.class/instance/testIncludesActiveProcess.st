tests
testIncludesActiveProcess
		
	self executeQuery.
		
	self assert: (resultItems includes: Processor activeProcess)