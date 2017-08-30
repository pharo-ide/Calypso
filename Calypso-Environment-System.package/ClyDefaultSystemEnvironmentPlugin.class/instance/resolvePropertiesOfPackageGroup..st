items resolving
resolvePropertiesOfPackageGroup: anItem
	| packageGroup |
	packageGroup := anItem actualObject.
	
	packageGroup resolvePropertiesOf: anItem