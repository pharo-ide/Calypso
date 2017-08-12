initialization
printContextDetailsOf: contextItem
	^contextItem actualObject closure ifNil: [ '' ] ifNotNil: [ :c | c printString ]