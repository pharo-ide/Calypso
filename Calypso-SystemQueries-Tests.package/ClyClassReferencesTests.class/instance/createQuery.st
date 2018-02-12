running
createQuery
	^ ClyClassReferences
		to: self referencedClass
		from: (ClyClassScope of: Object in: environment)