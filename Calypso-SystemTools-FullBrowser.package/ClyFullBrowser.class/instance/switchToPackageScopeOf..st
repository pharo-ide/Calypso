navigation
switchToPackageScopeOf: packages

	| query |
	query := ClyAllPackages sortedFrom: (ClyPackageScope ofAll: packages in: navigationEnvironment).

	packageView showQuery: query