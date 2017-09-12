items resolving
resolvePropertiesOfMethod: anItem

	| method |
	method := anItem actualObject.

	method usesUndeclares ifTrue: [ 
		anItem markWith: ClyUndeclaresUserTag]