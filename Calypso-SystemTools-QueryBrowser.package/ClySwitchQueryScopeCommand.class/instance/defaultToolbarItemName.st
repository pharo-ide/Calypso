accessing
defaultToolbarItemName
	queryScope ifNil: [ ^'Switch query scope' ].
	
	^queryScope printBasis