items resolving
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
	
	superclass isTrait ifTrue: [ myEnvironmentItem markWith: ClyTraitTag ].
	
	self isMethodsVisible ifTrue: [ 
		myEnvironmentItem markWith: ClyMethodsAreVisibleTag]