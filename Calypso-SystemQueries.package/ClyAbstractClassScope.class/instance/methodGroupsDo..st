queries
methodGroupsDo: aBlock
	| dynamicGroups groups activeGroups |
	dynamicGroups := OrderedCollection new.
	self methodGroupProvidersDo: [ :groupProvider |
		groups := groupProvider buildGroupsFor: self.
		groupProvider isStatic
			ifTrue: [ groups do: aBlock ]
			ifFalse: [ dynamicGroups addAll: groups ]].
	activeGroups := OrderedCollection new: dynamicGroups size.
	self methodsDo: [ :eachMethod |
		dynamicGroups do: [ :eachGroup | 
			(eachGroup includesMethod: eachMethod) ifTrue: [ 
				aBlock value: eachGroup.
				activeGroups add: eachGroup]].
		dynamicGroups removeAll: activeGroups.
		dynamicGroups ifEmpty: [ ^self ].
		activeGroups reset].