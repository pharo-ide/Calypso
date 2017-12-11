helpers
buildStackFrom: processStackSelectors
	
	self createProcessWith: processStackSelectors.
	
	queryResult fillWith: {process suspendedContext}.
	actualObjects := queryResult items collect: #actualObject