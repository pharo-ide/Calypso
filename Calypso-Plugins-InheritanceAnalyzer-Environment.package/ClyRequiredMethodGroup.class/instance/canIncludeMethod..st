testing
canIncludeMethod: aMethod
	| methodClass selector |
	selector := aMethod selector.
	methodClass := aMethod origin.
	
	(classScope anySatisfy: [ :each | each == methodClass or: [each inheritsFrom: methodClass]])
		 ifFalse: [ ^false ].
	
	^(self isAbstractMethod: aMethod) or: [self isClass: methodClass shouldImplement: selector]