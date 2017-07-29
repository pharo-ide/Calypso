tests
testStartsWithSuspendedContext
	| processScope |
	processScope := environment selectScope: ClyProcessScope of: { process}.
		
	self retrieveContentFrom: processScope.
		
	self assert: items first name equals: #topMethodInStack