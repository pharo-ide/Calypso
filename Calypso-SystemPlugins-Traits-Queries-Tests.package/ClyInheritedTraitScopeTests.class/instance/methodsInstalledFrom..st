tests
methodsInstalledFrom: aTrait
	| actualClassSide |
	actualClassSide := aTrait isClassSide 
		ifTrue: [ scope basisObjects anyOne classSide ]
		ifFalse: [ scope basisObjects anyOne instanceSide ].
		
	^actualClassSide methods select: [:each | each origin == aTrait  ]