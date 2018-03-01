script detection
detectInMethod: aMethod ifAbsent: absentBlock

	self allSubclassesDo: [ :each | 
		((each canBeProvidedByMethod: aMethod)
			and: [each isImplementedByMethod: aMethod]) 
				ifTrue: [ ^each createFrom: aMethod ]].
	
	^absentBlock value