execution
readParametersFromContext: aCriticContext
	super readParametersFromContext: aCriticContext.
	
	critique := aCriticContext selectedCritique.
	analyzedObject := aCriticContext analyzedObject