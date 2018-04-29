evaluating
sortFunctionFor: systemObject

	^functionsForTypes 
		at: systemObject calypsoEnvironmentType 
		ifAbsentPut: [ systemObject calypsoEnvironmentType defaultSortFunctionForCalypso]