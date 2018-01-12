initialization
prepareDefaultState
	super prepareDefaultState.
		
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter]