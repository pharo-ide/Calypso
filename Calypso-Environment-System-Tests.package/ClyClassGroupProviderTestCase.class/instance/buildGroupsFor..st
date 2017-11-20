running
buildGroupsFor: aPackage

	| classScope |
	
	classScope := ClyPackageScope of: { aPackage } in: environment.
	
	groupProvider classGroupsIn: classScope do: [ :each | builtGroups add: each ]