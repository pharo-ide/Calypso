building groups
buildGroupItemsOn: items 

	| group |
	group := self createMethodGroup.
	group isEmpty ifTrue: [ ^self ].
		
	items add: group asEnvironmentItem