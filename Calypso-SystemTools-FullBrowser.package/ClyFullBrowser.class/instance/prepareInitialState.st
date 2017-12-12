initialization
prepareInitialState

	self prepareCleanInitialStateWithoutFilter.
	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]