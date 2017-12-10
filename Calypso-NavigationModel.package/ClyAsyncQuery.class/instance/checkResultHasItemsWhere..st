execution
checkResultHasItemsWhere: itemConditionBlock
	| result |
	result := self execute.
	result isBuilt ifTrue: [ ^result items anySatisfy: itemConditionBlock ].
	^true "If actual result is still in processing then we can not be sure that there is no item where condition would be false"