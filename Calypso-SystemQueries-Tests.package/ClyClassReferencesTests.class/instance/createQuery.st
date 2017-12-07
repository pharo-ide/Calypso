running
createQuery
	^ ClyClassReferences
		to: {self referencedClass}
		from: (ClyClassScope ofAll: {Object} in: environment)