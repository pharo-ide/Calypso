tests-general
createQuery

	| filter |
	filter := ClyItemNameSubstringFilter pattern: testSelector.
	
	^ClyEnvironmentFilterQuery for: ClySortedMethods asEnvironmentQuery by: filter