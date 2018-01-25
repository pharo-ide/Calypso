initialization
prepareDefaultState
	super prepareDefaultState.
	
	DefaultPackageFilter ifNotNil: [ 
		packageView activateFilterWith: DefaultPackageFilter].
	
	UIManager default defer: [packageView takeKeyboardFocus]