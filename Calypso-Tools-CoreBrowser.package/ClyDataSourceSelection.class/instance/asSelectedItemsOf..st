converting
asSelectedItemsOf: itemsScopeClass

	| resultItems |
	self isEmpty ifTrue: [ ^self ].
	resultItems := items select: [ :each | each environmentScope = itemsScopeClass ].
	resultItems = items ifTrue: [ ^self ].
	
	^self class fromRoot: self rootDataSource items: resultItems