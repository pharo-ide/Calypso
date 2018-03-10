queries
itemsStartingAt: startIndex count: size

	^self protectItemsWhile: [	| result |
		result := items copyFrom: startIndex to: (startIndex + size - 1 min: items size).
		result withIndexDo: [:each :i |
			each ifNil: [ result at: i put: (self itemAt: i + startIndex)]].
		result]