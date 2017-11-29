*Calypso-SystemQueries
overSystemEnvironment: aSystemEnvironment
	^(self over: aSystemEnvironment)
		addPlugin: ClyDefaultSystemEnvironmentPlugin new