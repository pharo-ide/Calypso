items resolving
resolvePropertiesOfClassGroup: anItem
	| classGroup |
	classGroup := anItem actualObject.
	
	classGroup resolvePropertiesOf: anItem