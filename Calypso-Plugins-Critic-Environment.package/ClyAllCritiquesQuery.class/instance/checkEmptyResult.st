execution
checkEmptyResult
	| critic |
	critic := scope systemCritic.
	scope basisObjects do: [ :each | | result |
		result := critic analyze: each.
		result isComplete ifFalse: [ ^false ].
		result includesCritiques ifTrue: [ ^false ]].
	^true