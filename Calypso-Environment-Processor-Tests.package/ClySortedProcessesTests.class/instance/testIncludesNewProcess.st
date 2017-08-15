tests
testIncludesNewProcess
		
	| process1 |
	process1 := [  ] newProcess.
	self retrieveContentFrom: environment systemScope.
		
	self assert: (actualObjects includes: process1)