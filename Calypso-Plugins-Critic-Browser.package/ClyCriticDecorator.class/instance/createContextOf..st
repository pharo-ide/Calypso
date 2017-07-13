context
createContextOf: aSelection
	^ClyCriticContext 
		fromCritiques: aSelection items
		of: analysisScope basisObjects first 
		for: self