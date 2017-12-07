navigation
showStackOfProcesses: processes

	| stackQuery |
	stackQuery := ClyActiveContextOfProcesses 
		from: (ClyProcessScope ofAll: processes actualObjects in: navigationEnvironment)
		as: ClyProcessStack new.
	
	stackView showQuery: stackQuery