accessing
registerCritiques: objectCritiques for: anObject

	| registeredResult objectWasRequested |
	objectWasRequested := false.
	guard critical: [ 
		analyzedObjects 
			analysisResultFor: anObject ifPresent: [ :result |
				registeredResult := result]
			ifAbsent: [ 
				registeredResult := analyzedObjects register: anObject with: ClyCriticAnalysisResult new ].
		registeredResult critiques: objectCritiques.
		registeredResult beComplete.
		requestedCritiques 
			analysisResultFor: anObject ifPresent: [ :result |
				registeredResult := result.
				registeredResult critiques: objectCritiques.
				registeredResult beComplete.
				objectWasRequested := true]
			ifAbsent: [].
	].

	objectWasRequested ifTrue: [ 
		announcer announce: (ClyCriticAnalysisDone for: anObject) ].
	^registeredResult