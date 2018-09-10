operations
requestChangeBy: aBlock
	
	aBlock on: CmdCommandAborted do: [ :err ].
	
	self update