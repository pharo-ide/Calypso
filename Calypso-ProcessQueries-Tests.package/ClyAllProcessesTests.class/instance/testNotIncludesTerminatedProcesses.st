tests
testNotIncludesTerminatedProcesses
	
	| process |
	process := [  ] forkAt: Processor activePriority + 1.
	self assert: process isTerminated.
	
	self executeQuery.
		
	self deny: (resultItems includes: process)