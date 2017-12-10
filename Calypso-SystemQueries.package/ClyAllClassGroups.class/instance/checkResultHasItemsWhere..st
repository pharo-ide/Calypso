execution
checkResultHasItemsWhere: itemConditionBlock

	scope classGroupsDo: [ :each | 
			(itemConditionBlock value: each) ifTrue: [^true]].
	^false