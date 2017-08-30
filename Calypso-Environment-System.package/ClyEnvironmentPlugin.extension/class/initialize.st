*Calypso-Environment-System
initialize
	self == ClyEnvironmentPlugin ifTrue: [ ^self ].
	self isAutoActivated ifFalse: [ ^self ].
	
	ClyNavigationEnvironment installNewPlugin: self new