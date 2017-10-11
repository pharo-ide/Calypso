default
defaultOver: aSystem
	defaultGlobalEnvironments ifNil: [ defaultGlobalEnvironments := IdentityDictionary new ].
	
	^defaultGlobalEnvironments at: aSystem ifAbsentPut: [ 
		(ClyNavigationEnvironment over: aSystem)
			setUpAvailablePlugins;
			attachToSystem ]