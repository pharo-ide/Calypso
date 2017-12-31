system changes
isAffectedByChangedMethod: aMethod
	| selector |
	
	(self isFromScopeWithClassKindOf: aMethod origin) ifFalse: [ ^false ].
	
	selector := aMethod selector.
	scope classesDo: [ :each | 
		(each lookupSelector: selector) ifNotNil: [ ^true ]].
	^ false