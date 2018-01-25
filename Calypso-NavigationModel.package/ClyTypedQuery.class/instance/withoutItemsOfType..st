converting
withoutItemsOfType: anItemTypeClass

	^(self retrievesItemsOfType: anItemTypeClass)
		ifTrue: [ ClyUnknownQuery instance ]
		ifFalse: [ self ]