*Calypso-Environment-Core
convertToCalypsoBrowserItem: anObject

	| objectName |
	objectName := (anObject respondsTo: #name) 
		ifTrue: [ anObject name ] ifFalse: [ anObject printString ].
	^ClyBrowserItem named: objectName with: anObject