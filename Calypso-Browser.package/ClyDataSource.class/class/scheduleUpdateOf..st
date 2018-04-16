scheduling updates
scheduleUpdateOf: aDataSource

	UpdateScheduler ifNil: [ UpdateScheduler := ClyDataSourceUpdateScheduler new ].
	
	UpdateScheduler register: aDataSource