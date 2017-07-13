execution
selectMethodsInClass: aClass

	^selectors 
		collect: [ :each | aClass localMethodNamed: each ifAbsent: nil ]
		thenSelect: [ :each | each notNil ]