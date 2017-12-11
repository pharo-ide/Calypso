*Calypso-Browser
buildBrowserTabActions

	self canExecuteCommand ifFalse: [ ^#() ].
	
	^command buildBrowserTabActionsUsing: self