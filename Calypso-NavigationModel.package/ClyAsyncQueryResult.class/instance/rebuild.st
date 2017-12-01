building
rebuild
	self initializeItems.	
	metadata ifNil: [metadata := ClyQueryResultMetadata for: self].
	metadata addProperty: ClyBackgroundProcessingTag instance.
	
	buildProcess := [self buildActualResult] 
		forkAt: Processor userBackgroundPriority 
		named: 'Build result of ', buildingQuery printString