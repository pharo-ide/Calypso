converting
asSelectedItemsOf: itemTypeClass

	| resultItems |
	self isEmpty ifTrue: [ ^self ].
	resultItems := items select: [ :each | each isBasedOnItemType: itemTypeClass ].
	resultItems = items ifTrue: [ ^self ].
	
	^self class fromRoot: self rootDataSource items: resultItems