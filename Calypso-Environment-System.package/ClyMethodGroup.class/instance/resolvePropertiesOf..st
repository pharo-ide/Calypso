items resolving
resolvePropertiesOf: myEnvironmentItem
	super resolvePropertiesOf: myEnvironmentItem.
	
	self hasSubgroups ifTrue: [myEnvironmentItem markWithChildrenOf: ClyMethodGroup]