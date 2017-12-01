initialization
prepareNewFor: aQuery in: aNavigationEnvironment
	^(super prepareNewFor: aQuery in: aNavigationEnvironment)
		actualResult: (actualResult prepareNewFor: aQuery in: aNavigationEnvironment)