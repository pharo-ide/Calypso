tests
testIncludesNewProcess
		
	| process1 |
	process1 := [  ] newProcess.
	self executeQuery.
		
	self assert: (resultItems includes: process1)