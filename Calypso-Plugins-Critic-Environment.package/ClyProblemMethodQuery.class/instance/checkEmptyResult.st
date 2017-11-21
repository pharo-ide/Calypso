execution
checkEmptyResult

	scope methodsDo: [ :each | | result |
		result := scope systemCritic analyze: each.
		result isComplete ifFalse: [ ^false ].
		(self selectsMethod: each) ifTrue: [ ^false ] ].
	
	^true