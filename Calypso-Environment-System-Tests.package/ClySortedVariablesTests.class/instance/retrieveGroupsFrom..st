tests
retrieveGroupsFrom: classes
	| scope |
	scope := environment selectScope: ClyLocalClassScope of: classes.		
	self retrieveContentFrom: scope