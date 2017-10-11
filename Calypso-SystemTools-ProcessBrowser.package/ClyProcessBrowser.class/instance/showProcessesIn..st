navigation
showProcessesIn: aNavigationEnvironment
	| cursor |
	navigationEnvironment := aNavigationEnvironment.
	
	cursor := navigationEnvironment querySystemFor: ClySortedProcesses.

	processView dataSource: (ClyCollapsedDataSource on: cursor).