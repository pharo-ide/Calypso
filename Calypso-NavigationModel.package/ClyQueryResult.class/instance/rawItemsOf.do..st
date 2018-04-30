accessing
rawItemsOf: itemTypeClass do: aBlock

	^self rawItemsDo: [:each | 
		each calypsoEnvironmentType = itemTypeClass ifTrue: [ 
			aBlock value: each ]
	]