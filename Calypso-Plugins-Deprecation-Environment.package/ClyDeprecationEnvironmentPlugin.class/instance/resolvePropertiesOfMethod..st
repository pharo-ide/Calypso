items resolving
resolvePropertiesOfMethod: anItem

	| method |
	method := anItem actualObject.

	method isDeprecated ifTrue: [ 
		anItem markWith: ClyDeprecatedItemTag]