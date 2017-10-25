building
buildFromProcesses: processes 
	| processItem |
	processes reject: #isTerminated thenDo: [ :each | 
		processItem := ClyFormattedResultItem named: each name with: each.
		items add: processItem ]