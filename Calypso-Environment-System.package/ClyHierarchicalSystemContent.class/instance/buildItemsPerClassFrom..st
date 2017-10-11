building
buildItemsPerClassFrom: systemObjects
	| itemsPerClass item localItems |
	itemsPerClass := IdentityDictionary new.

	systemObjects do: [ :each |
		item := each asSystemEnvironmentItem.
		localItems := itemsPerClass
			at: item systemDefinitionClass ifAbsentPut: [self containerForItemsSortedByName ].
		localItems add: item].
	
	^itemsPerClass