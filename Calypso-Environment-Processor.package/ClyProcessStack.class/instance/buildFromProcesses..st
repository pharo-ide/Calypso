building
buildFromProcesses: processes
	processes ifEmpty: [ ^self ].
	processes size = 1 ifFalse: [ self error: 'multiple processes are not supported' ].
	
	self buildFromProcess: processes first