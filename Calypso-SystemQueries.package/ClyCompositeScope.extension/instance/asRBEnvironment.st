*Calypso-SystemQueries
asRBEnvironment
	| env |
	env := subscopes first asRBEnvironment.
	subscopes allButFirstDo: [:each | env := env | each asRBEnvironment  ].
	^env