testing
selectsMethod: aMethod
	| critiques |
	critiques := scope query: critiqueQuery.
	
	^aMethod critiques includesAny: critiques items