navigation
switchToPackageScopeOf: packages

	| query scope |
	scope := ClyPackageScope ofAll: packages in: navigationEnvironment.
	scope name: 'Scoped pckg'.
	query := ClyAllPackages sortedFrom: scope.

	packageView showQuery: query