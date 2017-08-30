default
defaultOver: aGlobalScopeClass of: aSystem
	defaultGlobalEnvironments ifNil: [ defaultGlobalEnvironments := IdentityDictionary new ].
	
	^defaultGlobalEnvironments at: aSystem ifAbsentPut: [ 
		(ClyNavigationEnvironment over: aGlobalScopeClass of: aSystem)
			setUpAvailablePlugins;
			attachToSystem ]