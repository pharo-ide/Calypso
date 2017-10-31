items resolving
prepareBrowserItem: anItem ofClass: aClass

	anItem addProperty: (ClyClassDefinitionProperty of: aClass).
	
	aClass localSelectors ifNotEmpty: [ anItem markWithChildrenOf: ClyMethod].

	aClass organization hasComment ifFalse: [ anItem markWith: ClyNotCommentedClassTag].
	
	aClass isTrait ifTrue: [ anItem markWith: ClyTraitTag ].
	aClass traits ifNotEmpty: [ anItem markWith: ClyTraitUserTag ]