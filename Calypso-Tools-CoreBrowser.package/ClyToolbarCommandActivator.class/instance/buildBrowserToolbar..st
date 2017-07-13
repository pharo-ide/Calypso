building toolbar items
buildBrowserToolbar: toolbarMorph

	self canExecuteCommand ifFalse: [ ^self ].
	
	command addToolbarItemInto: toolbarMorph using: self