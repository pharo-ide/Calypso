item decoration
decorateBrowserItem: anItem ofMethodGroup: aMethodGroup
	
	(aMethodGroup isKindOf: ClyInheritedMethodGroup) ifFalse: [ ^self ]. 

	aMethodGroup addTraitVisibilityLevels