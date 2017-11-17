navigation
switchToMetaLevelScope: scopeClass
	| newDS |
	metaLevelScope == scopeClass ifTrue: [ ^self ].
	
	self changeNavigationStateBy: [
		metaLevelScope := scopeClass.	
		newDS := methodGroupView dataSource withNewScopeClass: metaLevelScope.
		methodGroupView dataSource: newDS.	
		self showMethodsForGroups: self methodGroupSelection]