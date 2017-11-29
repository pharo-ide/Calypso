running
buildGroupsFor: aClass

	| classScope |
	
	classScope := ClyClassScope of: { aClass } in: environment.
	
	groupProvider methodGroupsIn: classScope do: [ :each | builtGroups add: each ]