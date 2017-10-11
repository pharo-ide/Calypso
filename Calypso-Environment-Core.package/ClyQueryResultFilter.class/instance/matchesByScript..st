testing
matchesByScript: anEnvironmentItem

	badScript ifTrue: [ ^true ].
	scriptBlock ifNil: [ self createBlockFromPattern].
	badScript ifTrue: [ ^true ].	
	
	^[(scriptBlock value: anEnvironmentItem actualObject) ~~ false] ifError: [ false ]