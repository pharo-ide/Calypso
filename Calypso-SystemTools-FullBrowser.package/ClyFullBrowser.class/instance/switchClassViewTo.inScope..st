navigation
switchClassViewTo: aClassQuery inScope: anEnvironmentScope
	| classes dataSource |
	classes := navigationEnvironment query: aClassQuery inScope: anEnvironmentScope.
	
	dataSource := ClyCollapsedDataSource on: classes.
	
	classView dataSource: dataSource 