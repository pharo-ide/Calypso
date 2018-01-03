printing
printBasisObject: anObject on: aStream

	| actualScope |
	actualScope := subscopes detect: [ :each | each isBasedOn: anObject ].
	^actualScope printBasisObject: anObject on: aStream