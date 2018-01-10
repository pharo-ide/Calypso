building
rebuild
	| semaphore |
	self initializeItems.	
	metadata ifNil: [metadata := ClyQueryResultMetadata new].
	metadata addProperty: ClyBackgroundProcessingTag instance.
	
	semaphore := Semaphore new.
	buildProcess := [self buildActualResult. semaphore signal] 
		forkAt: Processor userBackgroundPriority 
		named: 'Build result of ', buildingQuery printString.
	semaphore wait: 500 milliSeconds "Idea to allow query to be processed fastly and hide async execution for users in that case"