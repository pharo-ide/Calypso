activation-toolbar support
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	toolbarMorph addNewItem: (ClyBrowserModeSwitch activatingBy: aCommandActivator)