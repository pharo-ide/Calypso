instance creation
of: basisObjects in: aNavigationEnvironment
	basisObjects size = 1 ifFalse: [ 
		self error: 'System scope should be created on single basis' ].
	
	^super of: basisObjects in: aNavigationEnvironment