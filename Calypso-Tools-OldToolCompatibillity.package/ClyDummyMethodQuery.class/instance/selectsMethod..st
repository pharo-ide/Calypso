testing
selectsMethod: aMethod
	| result |
	(methods includes: aMethod) ifTrue: [ ^true ].
	criteriaBlock ifNil: [ ^false ].

	extraMethods removeAllSuchThat: [ :each | 
		each origin == aMethod origin and: [ each selector == aMethod selector]].

	result := criteriaBlock value: aMethod.
	result ifTrue: [ extraMethods add: aMethod ].
	^result