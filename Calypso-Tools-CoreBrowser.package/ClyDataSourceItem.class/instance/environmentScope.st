accessing
environmentScope

	^ environmentItem definesScope 
		ifTrue: [ environmentItem scope ]
		ifFalse: [ ownerDataSource itemScope ]