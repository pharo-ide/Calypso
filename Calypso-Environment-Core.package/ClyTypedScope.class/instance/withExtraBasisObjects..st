converting
withExtraBasisObjects: extraBasisObjects

	| newBasis |
	newBasis := OrderedCollection withAll: basisObjects.
	extraBasisObjects do: [ :each | 
		(newBasis includes: each) ifFalse: [ newBasis add: each ] ].

	^self withNewBasisObjects: newBasis