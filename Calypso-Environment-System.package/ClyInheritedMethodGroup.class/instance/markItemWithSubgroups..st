browser item preparation
markItemWithSubgroups: myItem
	self hasSubgroups ifTrue: [myItem markWithChildrenOf: ClyClass]