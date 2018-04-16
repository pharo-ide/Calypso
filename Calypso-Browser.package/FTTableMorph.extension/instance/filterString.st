*Calypso-Browser
filterString
	(function isKindOf: FTFilterFunction) ifFalse: [ ^'' ]. 
	^function pattern ifNil: [ '' ]