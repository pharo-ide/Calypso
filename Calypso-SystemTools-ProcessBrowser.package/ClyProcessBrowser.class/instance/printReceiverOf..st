initialization
printReceiverOf: contextItem
	| definition |
	definition := contextItem getProperty: ClyMethodContextDefinitionProperty.
	^definition receiverItem name