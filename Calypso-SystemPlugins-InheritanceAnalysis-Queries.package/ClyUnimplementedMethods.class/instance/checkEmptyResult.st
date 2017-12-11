execution
checkEmptyResult

	scope classesDo: [ :eachClass |
		(self isClassHasToBeImplemented: eachClass) ifTrue: [ ^false ]].
	^true