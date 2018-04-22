accessing
rawItemsOf: itemTypeClass do: aBlock

	^self rawItemsDo: [:each | 
		each calypsoBrowserType = itemTypeClass ifTrue: [ 
			aBlock value: each ]
	]