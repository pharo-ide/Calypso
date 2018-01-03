selection-methods
isExtensionMethodSelected

	self isMethodSelected ifFalse: [ ^false].
	
	^self selectedMethodItems anySatisfy: [ :each |
		each systemDefinition isExtension]