items resolving
prepareOwnBrowserItem: myItem
	super prepareOwnBrowserItem: myItem.
	
	self isRootsInheritInterestingClasses ifTrue: [ 
		myItem markWith: ClyInterestingSuperclassesTag.
		self isMethodsVisible ifTrue: [ 
			myItem markWith: ClyMethodsAreVisibleTag]].
	
	self collectTraitInformationInto: myItem 