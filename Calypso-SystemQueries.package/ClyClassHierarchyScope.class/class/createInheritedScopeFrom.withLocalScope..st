inherited scope
createInheritedScopeFrom: aClassScope withLocalScope: aLocalScopeClass

	| scopes |
	scopes := OrderedCollection new.
	ClyInheritedScopeAnnotation registeredInstancesDo: [ :each | 
		scopes add: (each createScopeFrom: aClassScope withLocalScope: aLocalScopeClass)].
	^ClyCompositeScope on: scopes