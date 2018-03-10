queries
itemsStartingWhere: conditionBlock count: size

	^self protectItemsWhile: [
		1 to: items size do: [ :i |
			(conditionBlock value: (self itemAt: i)) 
				ifTrue: [ ^self itemsStartingAt: i count: size]].
		#()
	]