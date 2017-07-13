items resolving
resolvePropertiesOfMethodGroup: anItem
	| methodGroup |
	methodGroup := anItem actualObject.
	
	methodGroup resolvePropertiesOf: anItem