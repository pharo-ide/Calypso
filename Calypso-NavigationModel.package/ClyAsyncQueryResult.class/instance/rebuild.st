building
rebuild
	self initializeItems.	
	metadata ifNil: [metadata := ClyQueryResultMetadata new].
	metadata addProperty: ClyBackgroundProcessingTag instance.
	
	buildProcess := [self buildActualResult] 
		forkAt: Processor userBackgroundPriority 
		named: 'Build result of ', buildingQuery printString