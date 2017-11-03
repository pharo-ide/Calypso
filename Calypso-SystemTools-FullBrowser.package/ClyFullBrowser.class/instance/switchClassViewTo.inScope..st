navigation
switchClassViewTo: queryResultClass inScope: anEnvironmentScope
	| classes dataSource |
	classes := navigationEnvironment 
		query: (ClyAllClasses requiredResult: queryResultClass new) 
		inScope: anEnvironmentScope.
	
	dataSource := ClyCollapsedDataSource on: classes.
	
	classView dataSource: dataSource 