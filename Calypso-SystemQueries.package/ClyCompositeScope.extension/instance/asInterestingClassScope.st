*Calypso-SystemQueries
asInterestingClassScope
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | each asInterestingClassScope ].
	^ClyCompositeScope on: newSubscopes in: environment named: name