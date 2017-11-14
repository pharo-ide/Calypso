tests
retrieveSubgroupsFrom: classes

	| groups |
	groups := environment 
		selectScope: ClyMethodGroupScope 
		of: { self methodGroupClass classScope: classes }.
	self retrieveContentFrom: groups