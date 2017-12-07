running
createQuery
	^ ClyMessageSenders
		of: {self referencedSelector}
		from: (ClyClassScope ofAll: {Object} in: environment)