running
buildGroupsFor: aClass
	| classScope |
	classScope := ClyClassScope ofAll: {aClass} in: environment.
	groupProvider
		methodGroupsIn: classScope
		do: [ :each | builtGroups add: each ]