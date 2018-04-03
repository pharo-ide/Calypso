building
processDynamicGroups: dynamicGroups ofMethodsFrom: aClassScope

	| activeGroups |
	activeGroups := OrderedCollection new: dynamicGroups size.
	aClassScope methodsDo: [ :eachMethod |
		dynamicGroups do: [ :eachGroup | 
			(eachGroup dependsOnMethod: eachMethod) ifTrue: [ 
				items add: eachGroup.
				activeGroups add: eachGroup]].
		dynamicGroups removeAll: activeGroups.
		dynamicGroups ifEmpty: [ ^self ].
		activeGroups reset]