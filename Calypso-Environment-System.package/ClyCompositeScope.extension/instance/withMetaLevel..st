*Calypso-Environment-System
withMetaLevel: aScopeClass 
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | 
		each withMetaLevel: aScopeClass ].
	^ClyCompositeScope on: newSubscopes in: environment