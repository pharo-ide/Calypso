items resolving
resolvePropertiesOfMethod: anItem

	| method |
	method := anItem actualObject.
	
	anItem addProperty: (ClyMethodDefinitionProperty of: method)