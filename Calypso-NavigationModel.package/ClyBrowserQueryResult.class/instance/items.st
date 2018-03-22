queries
items

	^self protectItemsWhile: [
		items do: [ :each | each prepareIn: environment ].
		items]