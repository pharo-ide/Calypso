*Calypso-SystemPlugins-Traits-Queries
addTraitVisibilityLevels

	| traitLevels |
	traitLevels := visibilityLevels 
		collect: [:each | each asTraitVisibility] thenReject: [:each | each isRedundant].
		
	visibilityLevels := visibilityLevels , traitLevels