*Calypso-Tools-CoreBrowser
filterField
	^(function isKindOf: FTFilterFunction )
		ifTrue: [ function field]
		ifFalse: [ nil ]