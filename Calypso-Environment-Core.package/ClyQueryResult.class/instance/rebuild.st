building
rebuild
	
	self initializeItems.
	
	buildingQuery buildResult: self fromScope: environmentScope.
	
	metadata := nil "metadata is computed and updated lazily"