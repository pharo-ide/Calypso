testing
selectsMethod: aMethod
	| critiques |
	critiques := critiqueQuery execute.
	
	^critiques items 
		anySatisfy: [ :each | each sourceAnchor entity == aMethod ]