accessing
register: anObject with: anAnalysisResult

	| subjectCache |
	subjectCache := contents 
		at: anObject criticSubjectType ifAbsentPut: [ containerClass new ].
	subjectCache at: anObject criticSubject put: anAnalysisResult.
	
	^anAnalysisResult 