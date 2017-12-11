*Calypso-Browser
filterField
	^(function isKindOf: FTFilterFunction )
		ifTrue: [ function field]
		ifFalse: [ nil ]