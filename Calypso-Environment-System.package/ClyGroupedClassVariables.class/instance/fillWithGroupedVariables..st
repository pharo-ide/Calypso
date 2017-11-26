building
fillWithGroupedVariables: varsPerTypeAndDefiningClass
	
	varsPerTypeAndDefiningClass at: ClyClassVariable ifPresent: [:classVarsPerClass |
		self fillWithVariables: classVarsPerClass type: ClyInstanceVariable]