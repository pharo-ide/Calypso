queries
asScope: anotherEnvironmentScopeClass

	environment ifNil: [ ^anotherEnvironmentScopeClass basis: basisObjects ].
	
	^environment selectScope: anotherEnvironmentScopeClass of: basisObjects