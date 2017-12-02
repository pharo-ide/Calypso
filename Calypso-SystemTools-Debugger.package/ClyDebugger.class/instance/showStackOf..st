navigation
showStackOf: aProcess
	| stackQuery |
	stackQuery := ClyActiveContextOfProcesses 
		from: (ClyProcessScope of: {aProcess} in: navigationEnvironment)
		as: ClyProcessStack new.
		
	stackView showQuery: stackQuery