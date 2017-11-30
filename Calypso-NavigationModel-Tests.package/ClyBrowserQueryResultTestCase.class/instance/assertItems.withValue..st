helpers
assertItems: itemValueWithDepthArray withValue: aBlockToGetValue
	| i actualItem valueOfItem |
	items := queryResult items.
	self assert: queryResult size equals: itemValueWithDepthArray size / 2.
	i := 1.
	itemValueWithDepthArray pairsDo: [ :expectedValue :expectedDepth |
		actualItem := items at: i.
		valueOfItem := aBlockToGetValue value: actualItem.
		self assert: valueOfItem equals: expectedValue.
		self assert: actualItem depth equals: expectedDepth.
		i := i + 1]