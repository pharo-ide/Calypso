queries
selectScope: anEnvironmentScopeClass of: basisObjects

	| existingScopes preparedBasis |
	self cleanGarbageInCache.
	existingScopes := queryCache at: anEnvironmentScopeClass ifAbsentPut: [ WeakValueDictionary new ].
	preparedBasis := anEnvironmentScopeClass prepareBasisFrom: basisObjects.
	^existingScopes 
		at: preparedBasis 
		ifAbsentPut: [anEnvironmentScopeClass of: preparedBasis in: self]