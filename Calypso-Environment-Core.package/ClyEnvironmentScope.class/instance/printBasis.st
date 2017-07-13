printing
printBasis

	^',' join: (basisObjects collect: [:each | self printBasisObject: each])