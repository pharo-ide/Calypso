*Calypso-SystemQueries
affectsVariablesOf: aClass
	"Any class has ClassVariables which are visible from both sides: instance side and class 	side.
	That's any class modification can affect variables from both class sides.
	And we do not need to distinguish it"

	aClass instanceSide = modifiedClass instanceSide ifTrue: [ ^true ].
	
	^false