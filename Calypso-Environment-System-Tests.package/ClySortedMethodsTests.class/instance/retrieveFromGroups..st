helpers
retrieveFromGroups: methodGroups
	| groupsScope |
	groupsScope := environment selectScope: ClyMethodGroupScope of: methodGroups.
		
	self retrieveContentFrom: groupsScope