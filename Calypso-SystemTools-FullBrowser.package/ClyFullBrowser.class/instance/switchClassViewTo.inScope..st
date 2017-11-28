navigation
switchClassViewTo: aQueryResult inScope: aScope
	| classes |
	classes := ClyAllClasses from: aScope as: aQueryResult.
	
	classView showQuery: classes