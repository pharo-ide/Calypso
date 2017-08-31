instance creation
basis: basisObjects
	basisObjects size = 1 ifFalse: [ 
		self error: 'System scope should be created on single basis' ].
	
	^super basisObjects: basisObjects