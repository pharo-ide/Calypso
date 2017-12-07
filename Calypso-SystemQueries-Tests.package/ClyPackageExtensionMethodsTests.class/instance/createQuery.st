running
createQuery
	^ ClyPackageExtensionMethods
		of: ClyClass1FromP1 package
		from: (ClyClassScope ofAll: {ClyClass1FromP1} in: environment)