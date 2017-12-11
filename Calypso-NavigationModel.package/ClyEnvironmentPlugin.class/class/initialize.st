initialization
initialize
	self isAbstract ifTrue: [ ^self ].
	
	ClyNavigationEnvironment installNewPlugin: self