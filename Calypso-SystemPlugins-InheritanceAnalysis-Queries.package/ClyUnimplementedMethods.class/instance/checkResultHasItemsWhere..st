execution
checkResultHasItemsWhere: itemConditionBlock

	scope classesDo: [ :eachClass |
		(self isClassHasToBeImplemented: eachClass) ifTrue: [ ^true ]].
	^false