initialization
initialize
	self isAbstract ifTrue: [ ^self ].
	self isAutoActivated ifFalse: [ ^self ].
	
	ClyNavigationEnvironment installNewPlugin: self