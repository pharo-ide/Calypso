queries
withExtraBasisObject: newBasisObject

	(basisObjects includes: newBasisObject) ifTrue: [ ^self ].
	 
	^self withNewBasisObjects: (basisObjects copyWith: newBasisObject)