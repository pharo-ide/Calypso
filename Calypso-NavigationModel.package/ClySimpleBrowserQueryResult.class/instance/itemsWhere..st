queries
itemsWhere: conditionBlock	
	| result |
	^self protectItemsWhile: [ 
		result := OrderedCollection new.
		1 to: items size do: [ :i | | each |
			each := self itemAt: i.
			(conditionBlock value: each) ifTrue: [
				result add: each]].
		result
	]