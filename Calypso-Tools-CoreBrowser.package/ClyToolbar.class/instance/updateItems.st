updating
updateItems

	| menu |
	menu := CmdMenu activatedBy: ClyToolbarCommandActivator.
	browser currentContextsDo: [ :eachContext | menu buildInContext: eachContext].
	
	self hide.
	self removeAllMorphs.
	[menu buildBrowserToolbar: self] ensure: [self show]