navigation
browseQueryResultOf: aSystemQuery
	
	| methodBrowser |
	
	methodBrowser := ClyQueryBrowser on: navigationEnvironment scopes: self allQueryScopes.	
	methodBrowser disablePluginsWhichAreNotIn: self.
	
	methodBrowser show: aSystemQuery inScope: activeScope.
	methodBrowser openInCurrentWindowOf: self.
	methodBrowser wasSpawnedFrom: self