updating
updateAllCritiques

	self stopAnalysis.
	
	guard critical: [ 		
		analyzedObjects clear.
		requestedCritiques cleanGarbage.
		requestedCritiques registeredObjects do: [ :each | self updateCritiquesFor: each ]		
	 ]