analysis
analyze: anObject

	| requestedResult |
	^guard critical: [ 
		requestedCritiques 
			analysisResultFor: anObject ifPresent: [ :result | ^result ] ifAbsent: [ ].
			
		requestedResult := analyzedObjects 
			analysisResultFor: anObject ifPresent: [ :result | result ]
			ifAbsent: [ | newResult |
				newResult := ClyCriticAnalysisResult new.
				analyzedObjects register: anObject with: newResult.
				analysis process: anObject.
				newResult ].
		requestedCritiques register: anObject with: requestedResult copy.
	]