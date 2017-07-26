cleaning
cleanGarbageInCache

	| garbage |
	garbage := queryCache associationsSelect: [ :ass | ass value isNil ].
	garbage associationsDo: [ :ass | queryCache removeKey: ass key ]