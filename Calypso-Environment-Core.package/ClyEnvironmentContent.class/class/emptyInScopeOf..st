instance creation
emptyInScopeOf: anEnvironmentScopeClass
	| env content |
	env := ClyNavigationEnvironment new.
	
	content := self of: ClyNavigationEnvironment new inScope:  (anEnvironmentScopeClass emptyOf: env).
	content items: #().
	^content