*Calypso-Browser
addToolbarItemInto: toolbarMorph using: aCommandActivator
	
	| item |
	item := self createToolbarItemFor: aCommandActivator.
	self decorateToolbarItem: item.
	toolbarMorph addNewItem: item