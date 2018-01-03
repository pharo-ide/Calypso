execution
createInheritanceScopeFrom: classes

	| classScope |
	classScope := ClyClassScope ofAll: classes in: browser navigationEnvironment.
	
	^classScope asFullHierarchyScope