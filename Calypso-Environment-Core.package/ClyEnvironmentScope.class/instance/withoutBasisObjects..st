queries
withoutBasisObjects: existingBasisObjects

	^self withNewBasisObjects: (basisObjects copyWithoutAll: existingBasisObjects)