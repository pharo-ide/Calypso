navigation
switchToProjects
	| projects |
	projects := ClyAllProjects sortedFrom: self systemScope.

	packageView showQuery: projects