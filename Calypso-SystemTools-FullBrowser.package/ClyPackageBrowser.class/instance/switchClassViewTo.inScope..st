navigation
switchClassViewTo: anEnvironmentContentClass inScope: anEnvironmentScope
	| cursor dataSource |
	cursor := navigationEnvironment query: anEnvironmentContentClass inScope: anEnvironmentScope.
	
	dataSource := ClyCollapsedDataSource on: cursor.
	
	classView dataSource: dataSource 