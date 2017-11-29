computing
computeCritiquesBy: aSystemCritic

	analyzedClass localMethods do: [ :each |
		aSystemCritic registerCritiques: each critiques for: each].
	
	aSystemCritic registerCritiques: #() for: self