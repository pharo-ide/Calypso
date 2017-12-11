converting
withNewBasisObjects: newBasisObjects

	^self copy 
		basisObjects: newBasisObjects;
		bindTo: environment