initialization
printContextDetailsOf: contextItem
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition closureItem 
		ifNil: [ '' ] 
		ifNotNil: [ :closureItem | closureItem name ]