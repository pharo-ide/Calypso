running
buildGroupsForAll: packages

	| classScope |
	
	classScope := ClyPackageScope of: packages in: environment.
	
	groupProvider classGroupsIn: classScope do: [ :each | builtGroups add: each ]