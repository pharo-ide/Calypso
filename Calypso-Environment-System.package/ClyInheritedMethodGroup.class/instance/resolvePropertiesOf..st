items resolving
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
	
	self isRootsInheritInterestingClasses ifTrue: [ 
		myEnvironmentItem markWith: ClyInterestingSuperclassesTag.
		self isMethodsVisible ifTrue: [ 
			myEnvironmentItem markWith: ClyMethodsAreVisibleTag]].
	
	self resolveTraitsPropertyOf: myEnvironmentItem 