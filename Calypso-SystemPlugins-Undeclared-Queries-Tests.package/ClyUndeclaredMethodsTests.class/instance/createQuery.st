running
createQuery
	^ ClyUndeclaredMethods
		from: (ClyClassScope ofAll: {ClyClassWithUndeclares} in: environment)