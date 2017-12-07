activation-toolbar support
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	| compoBox |
	compoBox := ClyScopeCompoBox for: browser.
	
	toolbarMorph addNewItem: compoBox