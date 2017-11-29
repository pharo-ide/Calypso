converting
withExtraBasisObjects: extraBasisObjects

	| newBasis |
	newBasis := OrderedCollection withAll: basisObjects.
	extraBasisObjects do: [ :each | 
		(newBasis identityIncludes: each) ifFalse: [ newBasis add: each ] ].

	^self withNewBasisObjects: newBasis