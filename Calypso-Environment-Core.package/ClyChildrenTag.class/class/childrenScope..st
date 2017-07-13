instance creation
childrenScope: anEnvironmentScopeClass
	^self scopes at: anEnvironmentScopeClass ifAbsentPut: [ 
		self new childrenScope: anEnvironmentScopeClass]