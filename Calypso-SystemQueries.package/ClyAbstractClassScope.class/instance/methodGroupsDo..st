queries
methodGroupsDo: aBlock
	| dynamicGroups groups |
	dynamicGroups := OrderedCollection new.
	
	self methodGroupProvidersDo: [ :groupProvider |
		groups := groupProvider buildGroupsFrom: self.
		groupProvider isStatic
			ifTrue: [ groups do: aBlock ]
			ifFalse: [ dynamicGroups addAll: groups ]].
		
	self processDynamicMethodGroups: dynamicGroups by: aBlock