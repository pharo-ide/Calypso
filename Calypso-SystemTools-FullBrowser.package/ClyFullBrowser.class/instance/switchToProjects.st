navigation
switchToProjects
	| projects |
		
	projects := systemScope projectQueryClass sortedFrom: self systemScope.

	packageView showQuery: projects