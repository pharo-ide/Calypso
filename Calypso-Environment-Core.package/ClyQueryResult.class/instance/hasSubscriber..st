system changes
hasSubscriber: anObject

	announcer ifNil: [ ^false].
	
	^announcer hasSubscriber: anObject