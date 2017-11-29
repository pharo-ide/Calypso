accessing
resetCritiquesFor: anObject

	guard critical: [ 
		requestedCritiques unregister: anObject.
		analyzedObjects unregister: anObject
	]