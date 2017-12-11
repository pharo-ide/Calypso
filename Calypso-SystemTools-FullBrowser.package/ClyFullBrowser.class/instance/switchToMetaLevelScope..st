navigation
switchToMetaLevelScope: aMetaLevelScopeClass
	metaLevelScope = aMetaLevelScopeClass ifTrue: [ ^self ].
	
	self changeMethodGroupQueryBy: [
		metaLevelScope := aMetaLevelScopeClass.				
		methodGroupQuery withMetaLevelScope: metaLevelScope
	]