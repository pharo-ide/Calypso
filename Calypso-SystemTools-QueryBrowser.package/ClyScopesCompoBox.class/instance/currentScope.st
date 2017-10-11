accessing
currentScope
	^ self scopes detect: [ :each | browser isQueryScopeActive: each]