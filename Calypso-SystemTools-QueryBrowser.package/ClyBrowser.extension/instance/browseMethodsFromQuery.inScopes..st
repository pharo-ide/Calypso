*Calypso-SystemTools-QueryBrowser
browseMethodsFromQuery: aMethodQuery inScopes: queryScopes
	
	| methodBrowser |
	methodBrowser := ClyQueryBrowser on: navigationEnvironment scopes: queryScopes.
	methodBrowser disablePluginsWhichAreNotIn: self.
	methodBrowser show: aMethodQuery inScope: queryScopes first.
	methodBrowser open.
	methodBrowser wasSpawnedFrom: self