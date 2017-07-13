*Calypso-Tools-CoreBrowser
buildBrowserTabActions

	self isActive ifFalse: [ ^#()].
	
	^contents flatCollect: [ :each | each buildBrowserTabActions ]