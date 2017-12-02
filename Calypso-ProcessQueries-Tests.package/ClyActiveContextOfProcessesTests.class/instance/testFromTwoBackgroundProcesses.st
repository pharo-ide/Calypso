tests
testFromTwoBackgroundProcesses
	| process process2 |
	process := [ 1 minute wait ] fork.
	process2 := [ 1 minute wait ] fork.
	Processor yield.
	
	self queryInScope: ClyProcessScope of: { process. process2}.
	
	self 
		assert: resultItems asIdentitySet 
		equals: {process suspendedContext. process2 suspendedContext} asIdentitySet.	