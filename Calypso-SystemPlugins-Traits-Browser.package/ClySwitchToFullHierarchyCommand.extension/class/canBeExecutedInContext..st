*Calypso-SystemPlugins-Traits-Browser
canBeExecutedInContext: aToolContext
	(super canBeExecutedInContext: aToolContext) ifFalse: [ ^false ].
	
	^aToolContext isTraitSelected not