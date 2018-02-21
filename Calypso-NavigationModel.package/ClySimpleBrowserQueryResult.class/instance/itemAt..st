queries
itemAt: index

	^self protectItemsWhile: [	
		(items at: index) ifNil: [ 
			items at: index put: (self convertRawItemAt: index)]]