queries
isQuery: aQuery hasResultWhere: itemConditionBlock
	| result |
	result := queryCache at: aQuery ifAbsent: [ nil ].	"cache is weak dict where ifAbsentPut: not works"
	result ifNotNil: [ 
		result isBuilt ifTrue: [ ^result items anySatisfy: itemConditionBlock ]].
	^ aQuery checkResultHasItemsWhere: itemConditionBlock