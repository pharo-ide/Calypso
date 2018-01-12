accessing
rawItemsDo: aBlock

	^items collect: [:each | each actualObject] thenDo: aBlock