navigation
switchToPackages
	| packages |
	packages := ClyAllPackages sortedFrom: self systemScope.

	packageView showQuery: packages