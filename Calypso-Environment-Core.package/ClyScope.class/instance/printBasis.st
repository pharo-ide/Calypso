printing
printBasis

	^String streamContents: [ :s | 
		self printBasisOn: s ]