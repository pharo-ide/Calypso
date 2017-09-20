testing
selectsMethod: aMethod
	| result |
	(super selectsMethod: aMethod) ifTrue: [ ^true ].
	criteriaBlock ifNil: [ ^false ].

	extraMethods removeAllSuchThat: [ :each | 
		ClyMethodScope checkBasisObject: each isEqualTo: aMethod].

	result := criteriaBlock value: aMethod.
	result ifTrue: [ extraMethods add: aMethod ].
	^result