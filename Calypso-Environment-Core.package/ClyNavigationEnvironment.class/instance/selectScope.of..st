queries
selectScope: anEnvironmentScopeClass of: basisObjects

	| existingScopes preparedBasis |
	self cleanGarbageInCache.
	existingScopes := scopeCache at: anEnvironmentScopeClass ifAbsentPut: [ WeakValueDictionary new ].
	
	preparedBasis := anEnvironmentScopeClass prepareBasisFrom: basisObjects.
	^existingScopes 
		at: preparedBasis 
		ifAbsentPut: [anEnvironmentScopeClass of: self basis: preparedBasis]