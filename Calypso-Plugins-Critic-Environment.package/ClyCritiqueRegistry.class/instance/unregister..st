accessing
unregister: anObject

	| subjectCache |
	subjectCache := contents at: anObject criticSubjectType ifAbsent: [ ^self].
	subjectCache	removeKey: anObject criticSubject ifAbsent: [ ]