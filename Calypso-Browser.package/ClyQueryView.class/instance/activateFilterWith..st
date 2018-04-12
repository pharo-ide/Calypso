controlling
activateFilterWith: patternString
	
	self initiateUIChangeBy: [ 
		table activateFilterWith: patternString.
		"Following update forces new selection instance which will be based on filtered data source.
		Selection always should be bound to actual data source of table"
		self updateSelection ]