*Calypso-SystemQueries
withMetaLevel: aScopeClass 
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | 
		each withMetaLevel: aScopeClass ].
	^ClyCompositeScope on: newSubscopes in: environment named: name