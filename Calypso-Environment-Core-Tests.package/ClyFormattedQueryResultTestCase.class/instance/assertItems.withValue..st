helpers
assertItems: itemValueWithDepthArray withValue: aBlockToGetValue
	| i actualItem valueOfItem |
	self assert: queryResult size equals: itemValueWithDepthArray size / 2.
	items := queryResult items.
	i := 1.
	itemValueWithDepthArray pairsDo: [ :expectedValue :expectedDepth |
		actualItem := items at: i.
		valueOfItem := aBlockToGetValue value: actualItem.
		self assert: valueOfItem equals: expectedValue.
		self assert: actualItem depth equals: expectedDepth.
		i := i + 1]