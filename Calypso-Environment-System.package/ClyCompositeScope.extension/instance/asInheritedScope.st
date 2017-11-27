*Calypso-Environment-System
asInheritedScope
	| newSubscopes |
	newSubscopes := subscopes collect: [ :each | each asInheritedScope  ].
	^ClyCompositeScope on: newSubscopes in: environment