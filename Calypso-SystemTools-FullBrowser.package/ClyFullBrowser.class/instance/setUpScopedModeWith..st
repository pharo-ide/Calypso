navigation
setUpScopedModeWith: aScope

	(aScope isKindOf: ClyPackageScope) ifFalse: [ ^self ].
	
	self switchToPackageScopeOf: aScope basisObjects