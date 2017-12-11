testing
isClass: aClass shouldImplement: aSelector

	| inheritedMethod |
	aClass isRootInEnvironment ifTrue: [ ^false].
	
	inheritedMethod := aClass superclass lookupSelector: aSelector.
	inheritedMethod ifNil: [ ^false ].
	
	^self isAbstractMethod: inheritedMethod