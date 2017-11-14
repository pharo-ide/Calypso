testing
isEmpty
	classScope classesDo: [ :eachClass |
		(self isClassHasToBeImplemented: eachClass) ifTrue: [ ^false ]].
	^true