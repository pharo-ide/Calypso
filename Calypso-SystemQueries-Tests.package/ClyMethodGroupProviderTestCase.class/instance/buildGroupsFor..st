running
buildGroupsFor: aClass
	| classScope |
	classScope := ClyClassScope of: aClass in: environment.
	builtGroups := groupProvider buildGroupsFrom: classScope