controlling
register: aDataSource

	updateQueue nextPut: aDataSource.
	self ensureRunning