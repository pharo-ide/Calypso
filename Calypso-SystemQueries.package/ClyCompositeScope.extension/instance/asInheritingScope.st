*Calypso-SystemQueries
asInheritingScope
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | each asInheritingScope  ].
	^ClyCompositeScope on: newSubscopes in: environment named: ClyClassScope inheritingScopeName