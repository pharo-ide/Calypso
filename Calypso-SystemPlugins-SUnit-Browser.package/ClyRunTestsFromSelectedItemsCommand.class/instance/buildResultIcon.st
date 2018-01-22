context menu support
buildResultIcon
	^ testItems 
		ifNotEmpty: [ self testItemsResult createIcon ]
		ifEmpty: [ nil ]