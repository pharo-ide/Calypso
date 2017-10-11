execution
canBeExecutedInContext: aCriticContext
	(super canBeExecutedInContext: aCriticContext) ifFalse: [ ^false ].
	
	^aCriticContext lastSelectedItem isMarkedWith: ClyCritiqueFixableTag