script detection
detectInMethod: aMethod ifAbsent: absentBlock

	self allSubclassesDo: [ :each | 
		(each isImplementedByMethod: aMethod) ifTrue: [ 
			^each createFrom: aMethod ]].
	
	^absentBlock value