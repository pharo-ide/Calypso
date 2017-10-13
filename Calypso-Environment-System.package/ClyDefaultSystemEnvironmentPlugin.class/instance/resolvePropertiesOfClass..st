items resolving
resolvePropertiesOfClass: anItem

	| class |
	class := anItem actualObject.
	
	anItem addProperty: (ClyClassDefinitionProperty of: class).
	
	class localSelectors ifNotEmpty: [ anItem markWithChildrenOf: ClyMethod].

	class organization hasComment ifFalse: [ anItem markWith: ClyNotCommentedClassTag].
	
	class isTrait ifTrue: [ anItem markWith: ClyTraitTag ].
	class traits ifNotEmpty: [ anItem markWith: ClyTraitUserTag ]