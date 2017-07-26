navigation
browseMethodsFromQuery: aMethodQuery
	
	| methodBrowser |
	
	methodBrowser := ClyMethodBrowser on: navigationEnvironment scopes: self allQueryScopes.	
	methodBrowser disablePluginsWhichAreNotIn: self.
	
	methodBrowser show: aMethodQuery inScope: activeScope.
	methodBrowser openInCurrentWindowOf: self.
	methodBrowser wasSpawnedFrom: self