items resolving
resolvePropertiesOfMethod: anItem

	| method |
	method := anItem actualObject.
	method isAbstract ifTrue: [ anItem markWith: ClyAbstractItemTag ]