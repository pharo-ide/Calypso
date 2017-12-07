tests
testFromBackgroundProcess
	| process |
	process := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryFromScope: ClyProcessScope of: process.
		
	self assert: resultItems anyOne == process suspendedContext