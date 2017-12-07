*Calypso-SystemPlugins-Traits-Queries
asTraitVisibility
	| traits |
	traits := extraClassScope basisObjects select: [ :each | each isTrait ].
	
	^(ClySingleTraitVisibilityLevel of: visibleClassScope)
		extraClassScope: (visibleClassScope asScope: ClyClassScope ofAll: traits)