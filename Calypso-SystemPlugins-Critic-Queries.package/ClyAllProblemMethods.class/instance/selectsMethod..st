testing
selectsMethod: aMethod
	| critiques |
	critiques := scope query: critiqueQuery.
	
	^critiques items 
		anySatisfy: [ :each | each sourceAnchor entity == aMethod ]