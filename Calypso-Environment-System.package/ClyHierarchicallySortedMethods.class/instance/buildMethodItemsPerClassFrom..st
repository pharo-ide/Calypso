building
buildMethodItemsPerClassFrom: methods
	| groupedMethods methodClass classMethods |
	groupedMethods := IdentityDictionary new.

	methods do: [ :each |
		methodClass := each methodClass.
		classMethods := groupedMethods 
			at: methodClass ifAbsentPut: [self containerForItemsSortedByName ].
		classMethods add: (ClyFormattedResultItem named: each selector with: each)].
	
	^groupedMethods