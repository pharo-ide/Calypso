decoration
prepareIn: aNavigationEnvironment
	isPrepared ifTrue: [ ^self ].
	
	aNavigationEnvironment pluginsDo: [ :each | 
		self decorateBy: each].
	
	isPrepared := true