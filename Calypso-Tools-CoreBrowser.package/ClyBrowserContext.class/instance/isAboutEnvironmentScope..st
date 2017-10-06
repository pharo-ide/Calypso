testing
isAboutEnvironmentScope: anEnvironmentScopeClass

	^selectedItems anySatisfy: [ :each | 
		each environmentScope includesBehavior: anEnvironmentScopeClass ]