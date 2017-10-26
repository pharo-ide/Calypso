building
groupVariablesPerTypeAndDeclaration: variables

	| groups varsPerClass typedVars |
	groups := IdentityDictionary new.
	variables do: [ :var | 
		typedVars := groups at: var class ifAbsentPut: [ IdentityDictionary new ].
		varsPerClass := typedVars 
			at: var declaringClass ifAbsentPut: [ self containerForItemsSortedByName ].
		varsPerClass add: (ClyVariableMethodGroup classes: self basisClasses variable: var)].
	
	^groups