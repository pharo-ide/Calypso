queries
itemsStartingAt: startIndex count: size

	^self protectItemsWhile: [	| result |
		result := Array new: (items size - startIndex + 1 min: size).
		result withIndexDo: [:each :i |
			each ifNil: [ result at: i put: (self itemAt: i + startIndex - 1)]].
		result]