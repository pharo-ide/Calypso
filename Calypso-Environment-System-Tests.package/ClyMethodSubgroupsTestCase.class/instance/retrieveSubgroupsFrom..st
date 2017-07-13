tests
retrieveSubgroupsFrom: classes

	| groups |
	groups := environment 
		selectScope: ClyMethodGroupScope 
		of: { self methodGroupClass classes: classes }.
	self retrieveContentFrom: groups