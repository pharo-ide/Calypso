building
buildFromProcesses: processes 
	| processItem |
	processes reject: #isTerminated thenDo: [ :each | 
		processItem := ClyBrowserItem named: each name with: each.
		items add: processItem ]