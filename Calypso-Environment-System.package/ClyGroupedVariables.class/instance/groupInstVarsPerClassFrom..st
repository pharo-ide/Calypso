building
groupInstVarsPerClassFrom: variables

	| groups varsPerClass |
	groups := IdentityDictionary new.
	variables reject: #isClassVariable thenDo: [ :var | 
		varsPerClass := groups 
			at: var declaringClass ifAbsentPut: [ self containerForItemsSortedByName ].
		varsPerClass add: (ClyVariableMethodGroup classes: environmentScope basisObjects variable: var)].
	
	^groups