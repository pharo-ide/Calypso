tests-general
createQuery

	| filter |
	filter := ClyItemNameFilter substringPattern: testSelector.
	
	^ClyEnvironmentFilterQuery for: ClySortedMethods asEnvironmentQuery by: filter