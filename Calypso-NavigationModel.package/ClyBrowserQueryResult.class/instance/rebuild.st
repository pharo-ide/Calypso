building
rebuild
	 "According to my logic I prepare actual result instance 
	using new query instead of original one which trigger rebuild.
	New query is always based on my required raw result.
	So here I simply execute this query and use its result items to fill myself.
	And subclasses still should implement #fill method"
	self initializeItems.
	rawResult := buildingQuery execute.
	self fillWith: rawResult items.
	metadata := nil.		
	self buildIndexes