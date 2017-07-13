navigation
browseMethodsFromQuery: aMethodQuery
	
	| methodBrowser |
	
	methodBrowser := ClyMethodBrowser on: navigationEnvironment scopes: self queryScopes.	
	methodBrowser disablePluginsWhichAreNotIn: self.
	
	methodBrowser show: aMethodQuery inScope: activeScope.
	methodBrowser openInCurrentWindowOf: self.
	methodBrowser wasSpawnedFrom: self