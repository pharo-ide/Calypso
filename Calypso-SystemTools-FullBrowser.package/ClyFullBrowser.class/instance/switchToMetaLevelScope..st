navigation
switchToMetaLevelScope: scopeClass
	| newDS |
	metaLevelScope == scopeClass ifTrue: [ ^self ].
	
	self changeStateBy: [
		metaLevelScope := scopeClass.	
		newDS := methodGroupView dataSource withNewScopeClass: metaLevelScope.
		methodGroupView dataSource: newDS.	
		self showMethodsForGroups: self methodGroupSelection]