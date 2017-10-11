initialization
printProcessPreview: processItem

	^processItem name, ': ', (self printCurrentContextOf: processItem)