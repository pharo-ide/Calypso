building
buildFromProcesses: processes 
	| processItem |
	processes reject: #isTerminated thenDo: [ :each | 
		processItem := ClyEnvironmentItem named: each name with: each.
		items add: processItem ]