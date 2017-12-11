navigation
prepareInitialState
	
	| query |
	query := ClyAllProcesses from: self systemScope.

	processView showQuery: query