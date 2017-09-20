accessing
defaultMenuItemName
	queryScope ifNil: [ ^'Switch query scope' ].
	
	^'Switch scope to ', queryScope printBasis