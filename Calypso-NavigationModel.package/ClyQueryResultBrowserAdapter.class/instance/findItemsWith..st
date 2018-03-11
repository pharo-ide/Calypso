queries
findItemsWith: actualObjects
	"it returnes browser items which represent actualObjects.
	Result will be in same order as given actualObjects array.
	If some object is absent then it will be returned as nil in result array"
	| result foundIndex |
	self protectItemsWhile: [ 
		result := actualObjects collect: [ :eachObject |
			foundIndex := rawResult items findFirst: [ :item | 
				item calypsoEnvironmentType checkCalypsoItem: item isEqualTo: eachObject ].
			foundIndex > 0 
				ifTrue: [ self convertRawItemAt: foundIndex]
				ifFalse: [nil]].
		^result]