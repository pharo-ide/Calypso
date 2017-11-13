testing
selectsMethod: aMethod
	| critiques |
	critiques := scope systemCritic availableCritiquesFor: aMethod.
	^critiques anySatisfy: [ :each | each rule group = critiqueGroupName ]