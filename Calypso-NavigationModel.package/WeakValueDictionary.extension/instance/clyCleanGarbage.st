*Calypso-NavigationModel
clyCleanGarbage

	| garbage |
	garbage := array select: [ :ass | ass notNil and: [ass value isNil] ].
	garbage do: [ :ass | self removeKey: ass key ]