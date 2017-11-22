navigation
switchToMetaLevelScope: scopeClass
	| newDS |
	metaLevelScope == scopeClass ifTrue: [ ^self ].
	
	self changeStateBy: [
		metaLevelScope := scopeClass.	
		methodGroupQuery := methodGroupQuery withMetaLevelScope: metaLevelScope.
		newDS := ClyCollapsedDataSource on: methodGroupQuery.
		methodGroupView dataSource: newDS.	
		self showMethodsForGroups: self methodGroupSelection]