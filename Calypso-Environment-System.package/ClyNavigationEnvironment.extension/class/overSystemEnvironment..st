*Calypso-Environment-System
overSystemEnvironment: aSystemEnvironment
	^(self over: aSystemEnvironment)
		addPlugin: ClyDefaultSystemEnvironmentPlugin new