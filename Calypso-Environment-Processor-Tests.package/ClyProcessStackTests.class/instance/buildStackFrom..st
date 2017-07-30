helpers
buildStackFrom: processStackSelectors
	| processScope |
	
	self createProcessWith: processStackSelectors.
	processScope := environment selectScope: ClyProcessScope of: { process}.
	self retrieveContentFrom: processScope.
		