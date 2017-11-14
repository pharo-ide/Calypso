browser item preparation
collectTraitInformationInto: myEnvironmentItem
	
	| traitsGroup traitsGroupItem |
	self isRootsUseTraits ifFalse: [^self].
	 
	traitsGroup := ClyInheritedTraitMethodGroup classScope: classScope.
	traitsGroupItem := ClyBrowserItem named: 'traitsGroup' with: traitsGroup.
	traitsGroup isMethodsVisible ifTrue: [ 
		traitsGroupItem markWith: ClyMethodsAreVisibleTag].
		
	myEnvironmentItem addProperty: (ClyTraitsProperty methodGroupItem: traitsGroupItem)