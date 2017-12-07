running
createQuery
	^ ClyAllPackages
		from: (ClyPackageScope ofAll: {Object package} in: environment)