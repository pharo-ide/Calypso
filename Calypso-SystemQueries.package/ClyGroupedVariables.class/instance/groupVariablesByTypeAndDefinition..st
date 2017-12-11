building
groupVariablesByTypeAndDefinition: variables

	| groups varsPerClass typedVars |
	groups := IdentityDictionary new.
	variables do: [ :var | 
		typedVars := groups at: var class ifAbsentPut: [ IdentityDictionary new ].
		varsPerClass := typedVars 
			at: var definingClass ifAbsentPut: [ self containerForItemsSortedByName ].
		varsPerClass add: var].	
	^groups