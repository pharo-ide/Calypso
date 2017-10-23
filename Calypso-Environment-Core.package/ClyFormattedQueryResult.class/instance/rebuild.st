building
rebuild
	super rebuild.
	
	self buildIndexes.
	self metadata reset. 
	environment resolveMetadataOf: self