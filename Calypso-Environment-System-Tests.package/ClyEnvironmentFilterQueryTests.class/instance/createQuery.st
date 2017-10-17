tests-general
createQuery

	| filter |
	filter := ClyItemNameFilter substringPattern: testSelector.
	
	^ClyFilteringQuery for: ClySortedMethods asEnvironmentQuery by: filter