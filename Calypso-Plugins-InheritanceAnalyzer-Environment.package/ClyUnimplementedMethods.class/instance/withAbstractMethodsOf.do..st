execution
withAbstractMethodsOf: aClass do: aBlock

	aClass localMethods 
		select: [ :each | self isAbstractMethod: each ]
		thenDo: aBlock