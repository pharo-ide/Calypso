building
addInheritedMethodGroup

	| group |
	group := ClyInheritedMethodGroup classes: environmentScope basisObjects.
	items add: group asEnvironmentItem