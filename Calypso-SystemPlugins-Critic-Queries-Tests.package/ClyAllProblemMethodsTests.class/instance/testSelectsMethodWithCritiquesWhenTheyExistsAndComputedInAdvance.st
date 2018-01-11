tests
testSelectsMethodWithCritiquesWhenTheyExistsAndComputedInAdvance

	| critiques |
	critiques := query critiqueQuery async execute.
	[ critiques isBuilt ] whileFalse: [ 30 milliSeconds wait ].

	self assert: (query selectsMethod: (ClyClassWithProblemMethods >> #methodWithHalt))