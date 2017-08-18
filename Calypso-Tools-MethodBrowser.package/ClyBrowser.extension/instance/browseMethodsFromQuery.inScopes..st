*Calypso-Tools-MethodBrowser
browseMethodsFromQuery: aMethodQuery inScopes: queryScopes
	
	| methodBrowser |
	methodBrowser := ClyMethodBrowser on: navigationEnvironment scopes: queryScopes.
	methodBrowser disablePluginsWhichAreNotIn: self.
	methodBrowser show: aMethodQuery inScope: queryScopes first.
	methodBrowser open.
	methodBrowser wasSpawnedFrom: self