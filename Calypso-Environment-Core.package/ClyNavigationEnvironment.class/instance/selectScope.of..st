queries
selectScope: anEnvironmentScopeClass of: basisObjects

	| existingScopes preparedBasis scopeType |
	self cleanGarbageInCache.
	scopeType := basisObjects 
		ifEmpty: [ Object ]  
		ifNotEmpty: [ basisObjects anyOne calypsoEnvironmentType ].
	existingScopes := scopeCache at: anEnvironmentScopeClass -> scopeType ifAbsentPut: [ WeakValueDictionary new ].
	
	preparedBasis := anEnvironmentScopeClass prepareBasisFrom: basisObjects.
	^existingScopes 
		at: preparedBasis 
		ifAbsentPut: [anEnvironmentScopeClass of: preparedBasis in: self]