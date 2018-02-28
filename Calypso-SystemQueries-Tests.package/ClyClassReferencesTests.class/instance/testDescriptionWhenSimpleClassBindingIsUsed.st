tests
testDescriptionWhenSimpleClassBindingIsUsed

	query := ClyClassReferences to: Object binding.
	
	self assert: query description equals: 'references to Object'