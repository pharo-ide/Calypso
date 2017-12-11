execution
buildResult: aQueryResult
		
	| allCritiques filtered |
	allCritiques := baseCritiqueQuery execute.
	
	filtered := allCritiques items select: [:each | self selectsCritique: each].

	aQueryResult fillWith: filtered