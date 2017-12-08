testing
isAffectedByChangedMethod: aMethod
	| methodClass selector |
	selector := aMethod selector.
	methodClass := aMethod origin.
	
	(self isFromScopeWithClassKindOf: methodClass) ifFalse: [ ^false ].
	
	^(self isAbstractMethod: aMethod) or: [self isClass: methodClass shouldImplement: selector]