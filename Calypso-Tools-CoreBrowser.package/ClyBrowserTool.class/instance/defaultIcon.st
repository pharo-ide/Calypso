initialization
defaultIcon
	self defaultIconName ifNil: [ ^nil ].
	
	^self iconNamed: self defaultIconName