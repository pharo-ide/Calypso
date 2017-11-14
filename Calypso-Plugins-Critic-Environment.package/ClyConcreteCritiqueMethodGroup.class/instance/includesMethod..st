testing
includesMethod: aMethod
	| critiques |
	(classScope includes: aMethod origin) ifFalse: [ ^false ].
	
	critiques := critic availableCritiquesFor: aMethod.
	^critiques anySatisfy: [ :each | each rule group = ruleGroupName ]