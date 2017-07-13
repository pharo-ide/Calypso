*Calypso-Environment-System
initialize
	self == ClyEnvironmentPlugin ifTrue: [ ^self ].
	self isAutoActivated ifFalse: [ ^self ].
	
	ClySystemNavigationEnvironment currentImage addPlugin: self new