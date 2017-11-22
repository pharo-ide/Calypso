navigation
switchToMetaLevelScope: scopeClass
	metaLevelScope == scopeClass ifTrue: [ ^self ].
	
	self changeStateBy: [
		metaLevelScope := scopeClass.	
		methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope.
		methodGroupView showQuery: methodGroupQuery.	
		self showMethodsForGroups: self methodGroupSelection]