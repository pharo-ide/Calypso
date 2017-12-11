running
setUp
	super setUp.
	
	browser showResultOf: (ClyAllMethods sortedFrom: browser queryScopes first)