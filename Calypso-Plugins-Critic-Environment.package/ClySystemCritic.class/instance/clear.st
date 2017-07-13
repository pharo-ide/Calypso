controlling
clear
	self stopAnalysis.
	guard critical: [ 
		requestedCritiques clear.
		analyzedObjects clear]