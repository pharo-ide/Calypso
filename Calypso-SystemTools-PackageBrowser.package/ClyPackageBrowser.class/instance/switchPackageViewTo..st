navigation
switchPackageViewTo: anEnvironmentQuery

	| newDataSource |
	newDataSource := packageView dataSource withNewContent: anEnvironmentQuery.
	
	packageView dataSource: newDataSource