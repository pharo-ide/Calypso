running
createQuery
	^ ClyMessageImplementors
		of: {self targetSelector}
		from: (ClyClassScope ofAll: {Object} in: environment)