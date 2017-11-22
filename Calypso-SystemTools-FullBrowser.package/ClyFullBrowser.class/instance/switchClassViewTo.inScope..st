navigation
switchClassViewTo: queryResultClass inScope: aScope
	| classes |
	classes := ClyAllClasses from: aScope as: queryResultClass new.
	
	classView showQuery: classes