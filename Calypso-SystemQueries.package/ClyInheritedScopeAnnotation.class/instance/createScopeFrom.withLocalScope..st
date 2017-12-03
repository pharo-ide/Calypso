scope creation
createScopeFrom: aClassScope withLocalScope: aLocalScopeClass

	^(aClassScope asScope: annotatedClass)
		localClassScope: aLocalScopeClass  