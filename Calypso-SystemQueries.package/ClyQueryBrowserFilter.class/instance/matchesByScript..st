testing
matchesByScript: anObject

	badScript ifTrue: [ ^true ].
	scriptBlock ifNil: [ self createBlockFromPattern].
	badScript ifTrue: [ ^true ].	
	
	^[(scriptBlock value: anObject) ~~ false] ifError: [ false ]