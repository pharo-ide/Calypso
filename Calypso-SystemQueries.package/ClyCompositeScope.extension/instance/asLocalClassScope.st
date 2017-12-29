*Calypso-SystemQueries
asLocalClassScope
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | each asLocalClassScope ].
	^ClyCompositeScope on: newSubscopes in: environment