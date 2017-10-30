navigation
showProcessesIn: aNavigationEnvironment
	| processes |
	navigationEnvironment := aNavigationEnvironment.
	
	processes := navigationEnvironment querySystemFor: ClySortedProcesses.

	processView dataSource: (ClyCollapsedDataSource on: processes).