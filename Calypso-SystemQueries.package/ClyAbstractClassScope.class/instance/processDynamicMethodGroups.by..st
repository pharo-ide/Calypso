private
processDynamicMethodGroups: dynamicGroups by: aBlock

	| activeGroups |
	activeGroups := OrderedCollection new: dynamicGroups size.
	self methodsDo: [ :eachMethod |
		dynamicGroups do: [ :eachGroup | 
			(eachGroup dependsOnMethod: eachMethod) ifTrue: [ 
				aBlock value: eachGroup.
				activeGroups add: eachGroup]].
		dynamicGroups removeAll: activeGroups.
		dynamicGroups ifEmpty: [ ^self ].
		activeGroups reset].