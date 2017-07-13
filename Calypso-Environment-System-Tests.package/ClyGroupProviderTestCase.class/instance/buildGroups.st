running
buildGroups

	builtItems := OrderedCollection new.
	
	groupProvider buildGroupItemsOn: builtItems.
	
	builtGroups := builtItems collect: #actualObject