*Calypso-SystemPlugins-Traits-Queries
addTraitVisibilityLevels

	| traitLevels |
	traitLevels := visibilityLevels 
		collect: [:each | each asTraitVisibility] thenSelect: [:each | each isRedundant not].
		
	visibilityLevels := visibilityLevels , traitLevels