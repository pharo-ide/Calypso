browser item preparation
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	superclass isTrait ifTrue: [ myItem markWith: ClyTraitTag ].
	
	self isMethodsVisible ifTrue: [ 
		myItem markWith: ClyMethodsAreVisibleTag]