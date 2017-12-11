*Calypso-Browser
buildBrowserTabActions

	self isActive ifFalse: [ ^#()].
	
	^contents flatCollect: [ :each | each buildBrowserTabActions ]