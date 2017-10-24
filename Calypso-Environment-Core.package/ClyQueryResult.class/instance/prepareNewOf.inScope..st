initialization
prepareNewOf: aNavigationEnvironment inScope: anEnvironmentScope 
	^self copy 
		environment: aNavigationEnvironment;
		environmentScope: anEnvironmentScope 