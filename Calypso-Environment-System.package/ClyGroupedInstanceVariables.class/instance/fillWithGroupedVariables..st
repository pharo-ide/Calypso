building
fillWithGroupedVariables: varsPerTypeAndDefiningClass
	self addInheritedMethodGroup.
	
	varsPerTypeAndDefiningClass at: ClyClassVariable ifPresent: [:classVarsPerClass |
		self addClassVariableGroup].
	varsPerTypeAndDefiningClass at: ClyInstanceVariable ifPresent: [:instVarsPerClass |
		self fillWithVariables: instVarsPerClass type: ClyInstanceVariable]