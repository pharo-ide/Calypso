queries
allItems

	^self protectItemsWhile: [	| result |
		result := Array new: items size.
		1 to: items size do: [ :i |
			result at: i put: (self itemAt: i)].
		result].