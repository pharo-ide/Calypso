tests
testEndsWithBottomContext
	| processScope |
	processScope := environment selectScope: ClyProcessScope of: { process}.
		
	self retrieveContentFrom: processScope.
		
	self assert: items last name equals: #bottomMethodInStack