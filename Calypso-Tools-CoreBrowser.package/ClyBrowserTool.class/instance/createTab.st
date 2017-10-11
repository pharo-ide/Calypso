building
createTab
	| menu |
	menu := CmdMenu activatedBy: ClyBrowserTabCommandActivation.
	menu buildInContext: context.
	
	containerTab := TabMorph
		label: self defaultTitle
		icon: self defaultIcon
		retrievingBlock: [self buildAndDecorate]
		actions: menu buildBrowserTabActions.
	
	containerTab model: self.
	^containerTab