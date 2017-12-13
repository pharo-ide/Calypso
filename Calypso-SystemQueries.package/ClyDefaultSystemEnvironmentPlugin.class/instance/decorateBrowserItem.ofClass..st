item decoration
decorateBrowserItem: anItem ofClass: aClass

	anItem addProperty: (ClyClassDefinitionProperty of: aClass).
	
	aClass localSelectors ifNotEmpty: [ anItem markWithChildrenOf: ClyMethod].

	aClass hasComment ifFalse: [ anItem markWith: ClyNotCommentedClassTag]