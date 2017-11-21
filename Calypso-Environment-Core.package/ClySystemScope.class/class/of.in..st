instance creation
of: basisObjects in: anEnvironment
	basisObjects size = 1 ifFalse: [ 
		self error: 'System scope should be created on single basis' ].
	
	^super of: basisObjects in: anEnvironment