*Calypso-Browser
buildBrowserTabActionsUsing: aCommandActivator

	^{
		TabAction 
			action: [ aCommandActivator executeCommand ]
			icon: self browserTabActionIcon
			label: aCommandActivator commandDescription
	}