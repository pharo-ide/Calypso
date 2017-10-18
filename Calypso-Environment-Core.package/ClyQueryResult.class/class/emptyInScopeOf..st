instance creation
emptyInScopeOf: anEnvironmentScopeClass
	| env content |
	env := ClyNavigationEnvironment new.
	
	content := self of: ClyNavigationEnvironment new inScope:  (anEnvironmentScopeClass emptyIn: env).
	content items: #().
	^content