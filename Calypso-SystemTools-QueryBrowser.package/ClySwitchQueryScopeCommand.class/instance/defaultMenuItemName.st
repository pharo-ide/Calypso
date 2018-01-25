accessing
defaultMenuItemName
	queryScope ifNil: [ ^'Switch scope' ].
	
	^'Switch scope to ', queryScope description