*Calypso-Browser
buildBrowserToolbar: toolbarMorph

	self isActive ifFalse: [ ^self].
	toolbarMorph submorphs ifNotEmpty: [ 
		toolbarMorph addNewItem: ClyToolbarSeparatorMorph new].
	contents do: [ :each | each buildBrowserToolbar: toolbarMorph ]