queries
itemsStartingAt: startIndex count: size

	^self protectItemsWhile: [	
		items copyFrom: startIndex to: (startIndex + size - 1 min: items size)]