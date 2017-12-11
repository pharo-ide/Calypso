running
buildGroupsForAll: packages
	| classScope |
	classScope := ClyPackageScope ofAll: packages in: environment.
	groupProvider
		classGroupsIn: classScope
		do: [ :each | builtGroups add: each ]