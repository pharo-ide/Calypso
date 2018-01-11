building
rebuild
	self initializeItems.	
	metadata ifNil: [metadata := ClyQueryResultMetadata new].
	metadata addProperty: ClyBackgroundProcessingTag instance.
	
	self runBuildProcess