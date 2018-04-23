evaluating
sortFunctionFor: systemObject

	^functionsForTypes 
		at: systemObject calypsoBrowserType 
		ifAbsentPut: [ systemObject calypsoBrowserType defaultSortFunctionForCalypso].
		