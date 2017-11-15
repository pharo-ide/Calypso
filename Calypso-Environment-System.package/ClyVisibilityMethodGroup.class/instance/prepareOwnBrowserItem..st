browser item preparation
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	visibleClass isTrait ifTrue: [ myItem markWith: ClyTraitTag ].
	
	self isMethodsVisible ifTrue: [ 
		myItem markWith: ClyMethodsAreVisibleTag]