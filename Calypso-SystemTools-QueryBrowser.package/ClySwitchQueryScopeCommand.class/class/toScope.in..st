instance creation
toScope: anEnvironmentScope in: aBrowser
	^self new 
		browser: aBrowser;
		queryScope: anEnvironmentScope 