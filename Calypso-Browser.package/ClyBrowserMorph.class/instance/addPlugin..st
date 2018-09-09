accessing
addPlugin: aBrowserPlugin
	plugins detect: [ :each | each class = aBrowserPlugin class ] ifFound: [ ^self ].
	
	aBrowserPlugin browser: self.
	plugins add: aBrowserPlugin