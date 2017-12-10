execution
checkResultHasItemsWhere: itemConditionBlock
	
	scope methodGroupsDo: [ :each | 
		(itemConditionBlock value: each) ifTrue: [^true]].
	^false