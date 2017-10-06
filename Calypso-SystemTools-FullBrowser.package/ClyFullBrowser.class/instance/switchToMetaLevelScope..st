navigation
switchToMetaLevelScope: scopeClass
	| newDS |
	metaLevelScope == scopeClass ifTrue: [ ^self ].
	
	self changeNavigationStateBy: [
		metaLevelScope := scopeClass.	
		newDS := methodGroupView dataSource withNewScope: metaLevelScope.
		methodGroupView dataSource: newDS.	
		self showMethodsForGroups: self methodGroupSelection]