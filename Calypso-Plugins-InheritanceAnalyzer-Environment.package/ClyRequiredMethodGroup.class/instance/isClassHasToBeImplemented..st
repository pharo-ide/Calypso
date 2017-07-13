testing
isClassHasToBeImplemented: aClass

	aClass allSuperclassesDo: [ :superclass | 
		superclass == Object ifTrue: [ ^false ].
		
		self withAbstractMethodsOf: superclass do: [:abstractMethod | | implementor |
			implementor := aClass lookupSelector: abstractMethod selector.
			implementor == abstractMethod ifTrue: [ ^true]]].
	
	^false