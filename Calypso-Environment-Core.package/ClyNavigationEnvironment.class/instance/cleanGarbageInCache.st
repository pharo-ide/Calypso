cleaning
cleanGarbageInCache

	| garbage |
	scopeCache do: [ :eachCache |
		garbage := eachCache associationsSelect: [ :ass | ass value isNil ].
		garbage associationsDo: [ :ass | eachCache removeKey: ass key ]
	]