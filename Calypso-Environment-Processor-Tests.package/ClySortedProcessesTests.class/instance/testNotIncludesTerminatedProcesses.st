tests
testNotIncludesTerminatedProcesses
	
	| process |
	process := [  ] forkAt: Processor activePriority + 1.
	self assert: process isTerminated.
	
	self retrieveContentFrom: environment systemScope.
		
	self deny: (actualObjects includes: process)