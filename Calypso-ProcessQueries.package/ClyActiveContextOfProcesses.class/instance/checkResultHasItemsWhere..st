execution
checkResultHasItemsWhere: itemConditionBlock
	scope processesDo: [ :each | 
		(itemConditionBlock value: each) ifTrue: [^true]].
	^false