building
buildFromProcesses: processes 
	| processItem |
	processes do: [ :each | 
		processItem := ClyEnvironmentItem named: each name with: each.
		items add: processItem ]