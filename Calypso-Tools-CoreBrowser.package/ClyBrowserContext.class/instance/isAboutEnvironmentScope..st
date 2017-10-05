testing
isAboutEnvironmentScope: anEnvironmentScopeClass

	^selectedItems anySatisfy: [ :each | each belongsToScope: anEnvironmentScopeClass ]