tab actions
buildBrowserTabActions

	self canExecuteCommand ifFalse: [ ^#() ].
	
	^command buildBrowserTabActionsUsing: self