accessing
addPlugin: anEnvironmentPlugin
	plugins detect: [ :each | each class = anEnvironmentPlugin class ] ifFound: [ ^self ].
	
	anEnvironmentPlugin environment: self.
	plugins add: anEnvironmentPlugin