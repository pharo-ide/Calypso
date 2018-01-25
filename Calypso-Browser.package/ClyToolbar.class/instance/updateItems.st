updating
updateItems

	| menu |
	menu := CmdMenu activatedBy: ClyToolbarCommandActivation.
	browser navigationContextsDo: [ :eachContext | menu buildInContext: eachContext].
	
	self hide.
	self removeAllMorphs.
	[menu buildBrowserToolbar: self] ensure: [self show]