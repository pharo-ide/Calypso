execution
checkResultHasItemsWhere: itemConditionBlock

	scope instanceVariablesDo: [ :each | 
		(itemConditionBlock value: each) ifTrue: [^true]].
	^false