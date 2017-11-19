decoration
decorateOwnBrowserItem: myItem
	super decorateOwnBrowserItem: myItem.
	
	visibleClass isTrait ifTrue: [ myItem markWith: ClyTraitTag ].
	
	self isMethodsVisible ifTrue: [ 
		myItem markWith: ClyMethodsAreVisibleTag]