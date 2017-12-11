testing
isActive

	^extraClassScope collectAllClasses anySatisfy: [ :each | 
		visibleClassScope isBasedOn: each ]