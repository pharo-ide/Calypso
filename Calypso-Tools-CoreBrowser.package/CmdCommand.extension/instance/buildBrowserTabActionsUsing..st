*Calypso-Tools-CoreBrowser
buildBrowserTabActionsUsing: aCommandActivator

	^{
		TabAction 
			action: [ aCommandActivator executeCommand ]
			icon: (Smalltalk ui iconNamed: self browserTabActionIconName)
			label: aCommandActivator menuItemName
	}