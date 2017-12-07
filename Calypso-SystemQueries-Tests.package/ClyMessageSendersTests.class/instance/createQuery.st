running
createQuery
	^ ClyMessageSenders
		of: {self referencedSelector}
		from: (ClyClassScope of: Object in: environment)