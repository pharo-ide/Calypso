execution
checkResultHasItemsWhere: itemConditionBlock
	
	scope packagesDo: [ :each | 
		(itemConditionBlock value: each) ifTrue: [^true]].
	^false