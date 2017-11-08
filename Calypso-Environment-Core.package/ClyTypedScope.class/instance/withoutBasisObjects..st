converting
withoutBasisObjects: existingBasisObjects

	^self withNewBasisObjects: (basisObjects copyWithoutAll: existingBasisObjects)