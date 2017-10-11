activation-toolbar support
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	| compoBox |
	compoBox := ClyScopesCompoBox for: browser.
	
	toolbarMorph addNewItem: compoBox