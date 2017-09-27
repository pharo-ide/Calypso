*Calypso-Tools-CoreBrowser
buildBrowserTabActions

	self canExecuteCommand ifFalse: [ ^#() ].
	
	^command buildBrowserTabActionsUsing: self