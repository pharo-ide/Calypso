items resolving
resolveTraitsPropertyOf: myEnvironmentItem
	
	| traitsGroup traitsGroupItem |
	self isRootsUseTraits ifFalse: [^self].
	 
	traitsGroup := ClyInheritedTraitMethodGroup classes: classes.
	traitsGroupItem := ClyEnvironmentItem named: 'traitsGroup' with: traitsGroup.
	traitsGroup isMethodsVisible ifTrue: [ 
		traitsGroupItem markWith: ClyMethodsAreVisibleTag].
		
	myEnvironmentItem addProperty: (ClyTraitsProperty methodGroupItem: traitsGroupItem)