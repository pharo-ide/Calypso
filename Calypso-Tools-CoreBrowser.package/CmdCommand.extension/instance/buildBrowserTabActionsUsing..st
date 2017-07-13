*Calypso-Tools-CoreBrowser
buildBrowserTabActionsUsing: anActivator

	^{
		TabAction 
			action: [ anActivator executeCommand ]
			icon: (Smalltalk ui iconNamed: self browserTabActionIconName)
			label: anActivator menuItemName
	}