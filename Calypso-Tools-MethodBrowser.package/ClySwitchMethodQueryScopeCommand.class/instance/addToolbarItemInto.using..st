activation-toolbar support
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	| compoBox |
	compoBox := ClyScopesCompoBox for: aCommandActivator actualActivationContext browser.
	
	toolbarMorph addNewItem: compoBox