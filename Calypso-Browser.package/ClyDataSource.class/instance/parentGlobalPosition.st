accessing
parentGlobalPosition
	^parentItem ifNil: [ 0 ] ifNotNil: [ parentItem globalPosition ]