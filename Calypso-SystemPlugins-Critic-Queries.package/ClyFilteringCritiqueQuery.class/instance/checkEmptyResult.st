execution
checkEmptyResult

	| allCritiques |
	allCritiques := baseCritiqueQuery execute.
	
	^(allCritiques items 
		anySatisfy: [:each | self selectsCritique: each]) not