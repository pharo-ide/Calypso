testing
isRegistered: anObject

	| subjectCache |
	subjectCache := contents at: anObject criticSubjectType ifAbsent: [ ^false ].
	
	^subjectCache at: anObject criticSubject ifPresent: [ :value | value notNil ]