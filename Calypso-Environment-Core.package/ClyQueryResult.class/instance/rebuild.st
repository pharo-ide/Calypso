building
rebuild
	
	self initializeItems.
	
	buildingQuery buildResult: self in: environment.
	
	metadata := nil "metadata is computed and updated lazily"