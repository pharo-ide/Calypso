items resolving
resolvePropertiesOfClass: anItem

	| class |
	class := anItem actualObject.
	class hasAbstractMethods ifTrue: [ anItem markWith: ClyAbstractItemTag ]