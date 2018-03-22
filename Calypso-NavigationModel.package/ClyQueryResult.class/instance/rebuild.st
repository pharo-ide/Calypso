building
rebuild
	self initializeItems.
	buildingQuery buildResult: self.
	metadata := nil "metadata is computed and updated lazily"