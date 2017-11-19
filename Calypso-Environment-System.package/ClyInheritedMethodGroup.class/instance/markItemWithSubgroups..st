decoration
markItemWithSubgroups: myItem
	self hasSubgroups ifTrue: [myItem markWithChildrenOf: ClyClass]