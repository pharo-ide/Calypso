testing
matchesByScript: aBrowserItem

	badScript ifTrue: [ ^true ].
	scriptBlock ifNil: [ self createBlockFromPattern].
	badScript ifTrue: [ ^true ].	
	
	^[(scriptBlock value: aBrowserItem actualObject) ~~ false] ifError: [ false ]