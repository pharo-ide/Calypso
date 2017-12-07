running
buildGroupsFor: aPackage
	| classScope |
	classScope := ClyPackageScope ofAll: {aPackage} in: environment.
	groupProvider
		classGroupsIn: classScope
		do: [ :each | builtGroups add: each ]