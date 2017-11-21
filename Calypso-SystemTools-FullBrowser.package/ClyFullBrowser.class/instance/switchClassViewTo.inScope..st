navigation
switchClassViewTo: queryResultClass inScope: aScope
	| classes dataSource |
	classes := (ClyAllClasses from: aScope as: queryResultClass new).
	
	dataSource := ClyCollapsedDataSource on: classes.
	
	classView dataSource: dataSource 