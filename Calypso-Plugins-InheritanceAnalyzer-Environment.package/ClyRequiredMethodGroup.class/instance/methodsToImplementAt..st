accessing
methodsToImplementAt: aClass
	| result implementor |
	result := OrderedCollection new.
	aClass allSuperclassesDo: [ :superclass | 
		superclass == Object ifTrue: [ ^result ].

		self withAbstractMethodsOf: superclass do: [ :abstractMethod |  
			implementor := aClass lookupSelector: abstractMethod selector.
			implementor == abstractMethod ifTrue: [ result add: implementor ]]			
	].
	
	^result