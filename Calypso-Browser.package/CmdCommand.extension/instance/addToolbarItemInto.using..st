*Calypso-Browser
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	| button |
	button := ClyBrowserButton activatingBy: aCommandActivator.
	self decorateToolbarButton: button.
	toolbarMorph addNewItem: button