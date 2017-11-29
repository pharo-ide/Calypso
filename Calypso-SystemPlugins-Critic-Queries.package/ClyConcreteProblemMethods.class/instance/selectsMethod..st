testing
selectsMethod: aMethod
	| critiques |
	critiques := self systemCritic availableCritiquesFor: aMethod.
	^critiques anySatisfy: [ :each | each rule group = critiqueGroupName ]