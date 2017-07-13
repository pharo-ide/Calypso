testing
isBasedOn: anEnvironmentContentClass inScope: anEnvironmentScopeClass

	^(self isBasedOn: anEnvironmentContentClass)
		and: [ self isBasedOnScope: anEnvironmentScopeClass ]