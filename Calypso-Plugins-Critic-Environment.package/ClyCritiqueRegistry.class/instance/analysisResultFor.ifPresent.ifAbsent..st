accessing
analysisResultFor: anObject ifPresent: presentBlock ifAbsent: absentBlock

	| subjectCache |
	subjectCache := contents at: anObject criticSubjectType ifAbsent: [^absentBlock value].
	
	^subjectCache 
		at: anObject criticSubject
		ifPresent: [:existing | existing ifNil: absentBlock ifNotNil: [ presentBlock cull: existing]]
		ifAbsent: absentBlock