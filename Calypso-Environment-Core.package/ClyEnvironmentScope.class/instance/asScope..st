queries
asScope: anotherEnvironmentScopeClass

	environment ifNil: [ ^anotherEnvironmentScopeClass of: basisObjects ].
	
	^environment selectScope: anotherEnvironmentScopeClass of: basisObjects