updating
updateCritiquesFor: anObject

	| existingResult |
	guard critical: [ 
		analyzedObjects unregister: anObject.
		existingResult := requestedCritiques 
			analysisResultFor: anObject ifPresent: [ :result | result] 
			ifAbsent: [^self analyze: anObject].
		existingResult reset.	
		analyzedObjects register: anObject with: existingResult copy.
		analysis process: anObject]