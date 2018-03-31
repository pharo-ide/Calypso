tests
testActualItemsEnumerationShouldNotGenerateBrowserItems

	self simulateResultWith: #(#a #b #c).
	
	queryResult actualItemsDo: [:each :index | ] .
	
	self assert: queryResult itemBuffer equals: { nil. nil. nil }