*Calypso-SystemQueries
asInheritedScope
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | each asInheritedScope  ].
	^ClyCompositeScope on: newSubscopes in: environment named: ClyClassScope inheritedScopeName