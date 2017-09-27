testing
canBeUsedInContext: aBrowserContext
	
	self isAbstract ifTrue: [ ^false ].
	
	^aBrowserContext isActivationOf: self contextClass