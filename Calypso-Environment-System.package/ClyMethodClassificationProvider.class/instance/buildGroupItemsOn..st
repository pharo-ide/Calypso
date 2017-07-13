building groups
buildGroupItemsOn: items
	
	classes do: [ :eachClass | eachClass localMethods do: [ :eachMethod |
		self buildMethodGroupsFor: eachMethod ]].

	self addMethodGroupsTo: items