preparation
prepareIn: aNavigationEnvironment
	isPrepared ifTrue: [ ^self ].
	
	aNavigationEnvironment pluginsDo: [ :each | 
		self prepareBy: each].
	
	isPrepared := true
	