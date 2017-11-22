navigation
switchToProjects
	| projects dataSource |
	projects := ClyAllProjects sortedFrom: self systemScope.
	dataSource := ClyCollapsedDataSource on: projects.	
	packageView dataSource: dataSource