execution
canBeExecutedInContext: aCriticContext
	(super canBeExecutedInContext: aCriticContext) ifFalse: [ ^false ].
	
	^aCriticContext selectedCritique class = ArchitecturalCritique