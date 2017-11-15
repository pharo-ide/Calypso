*Calypso-SystemTools-QueryBrowser
browseMethodsFromQuery: aMethodQuery inScopes: queryScopes
	
	| methodBrowser |
	aMethodQuery scope ifNil: [ aMethodQuery scope: queryScopes first ].
	methodBrowser := ClyQueryBrowser on: navigationEnvironment scopes: queryScopes.
	methodBrowser disablePluginsWhichAreNotIn: self.
	methodBrowser showResultOf: aMethodQuery.
	methodBrowser open.
	methodBrowser wasSpawnedFrom: self